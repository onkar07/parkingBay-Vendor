import 'dart:developer';

import 'package:vendor_app/core/service/helper/APIConfig.dart';
import 'package:vendor_app/core/service/helper/APIProvider.dart';
import 'package:vendor_app/modul/authentication/LoginModal.dart';
import 'package:vendor_app/modul/authentication/login_response_modal.dart';

class AuthService {
  APIProvider apiProvider = APIProvider();

  Future<LoginResponseModal> login(LoginModal body) async {
    log(body.toJson().toString());
    try {
      final response = await apiProvider.post(APIConfig.login, body);
      return LoginResponseModal.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
  Future<LoginResponseModal> registerVendor(LoginModal body) async {
    log(body.toJson().toString());
    try {
      final response = await apiProvider.post(APIConfig.login, body);
      return LoginResponseModal.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }




}
