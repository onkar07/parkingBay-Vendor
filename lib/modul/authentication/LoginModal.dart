// To parse this JSON data, do
//
//     final loginModal = loginModalFromJson(jsonString);

import 'dart:convert';

LoginModal loginModalFromJson(String str) =>
    LoginModal.fromJson(json.decode(str));

String loginModalToJson(LoginModal data) => json.encode(data.toJson());

class LoginModal {
  String? authUser;
  String? authPassword;
  String? email;
  String? password;

  LoginModal({
    this.authUser,
    this.authPassword,
    this.email,
    this.password,
  });

  factory LoginModal.fromJson(Map<String, dynamic> json) => LoginModal(
        authUser: json["auth_user"],
        authPassword: json["auth_password"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "auth_user": authUser,
        "auth_password": authPassword,
        "email": email,
        "password": password,
      };
}
