import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:vendor_app/core/service/helper/AppException.dart';
import 'package:vendor_app/main.dart';


class APIProvider {
  Future<dynamic> get(String url) async {
    Map<String, String> headers;
    if (sharedPref.token.isEmpty) {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    } else {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + sharedPref.token,
      };
    }
    dynamic responseJson;
    try {
      final response = await http
          .get(
        Uri.parse(url),
        headers: headers,
      )
          .timeout(Duration(minutes: 1));
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      //throw FetchDataException('No_internet_connection');
      throw FetchDataException('Error During Communication with Server');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(String url, dynamic body) async {
    Map<String, String> headers;
    if (sharedPref.token.isEmpty) {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    } else {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + sharedPref.token,

      };
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), headers: headers, body: jsonEncode(body))
          .timeout(Duration(minutes: 1));
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      // throw FetchDataException('No_internet_connection');
      throw FetchDataException('Error During Communication with Server');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(String url, {dynamic body}) async {
    Map<String, String> headers;
    if (sharedPref.token.isEmpty) {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    } else {
      headers = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + sharedPref.token,
      };
    }
    dynamic responseJson;
    try {
      final response = await http
          .put(Uri.parse(url), headers: headers, body: jsonEncode(body))
          .timeout(Duration(minutes: 1));
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      // throw FetchDataException('No_internet_connection');
      throw FetchDataException('Error During Communication with Server');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(String url) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    dynamic responseJson;
    try {
      final response = await http
          .delete(Uri.parse(url), headers: headers)
          .timeout(Duration(minutes: 1));

      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      // throw FetchDataException('No_internet_connection');
      throw FetchDataException('Error During Communication with Server');
    } catch (e) {
      rethrow;
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 202:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        var errorJson = jsonDecode(response.body);
        throw BadRequestException(errorJson['errorMessage']);
      case 412:
        var errorJson = jsonDecode(response.body);
        throw PreconditionFailedException(
            errorJson['errorMessage'], response.statusCode);
      case 401:
        var errorJson = jsonDecode(response.body);
        throw UnauthorisedException(
            errorJson['errorMessage'], response.statusCode);
      case 403:
        throw UnauthorisedException("Session Expired", response.statusCode);
      case 500:
        var errorJson = jsonDecode(response.body);
        throw InternalServerException(
            errorJson['errorMessage'], response.statusCode);
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
