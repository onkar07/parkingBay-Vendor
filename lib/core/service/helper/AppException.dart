class AppException implements Exception {

  var message;
  var prefix;
  var errorCode ;

  AppException([this.message, this.prefix, this.errorCode]);

  String toString() {
    return message;
  }

}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message);
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message, int? errorCode]) : super(message,"",errorCode);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}

class InternalServerException extends AppException{
  InternalServerException([String? message , int? errorCode]) : super(message ,"Internal Server Error :", errorCode);
}

class PreconditionFailedException extends AppException {
  PreconditionFailedException([String? message, int? errorCode]) : super(message,"",errorCode);
}


