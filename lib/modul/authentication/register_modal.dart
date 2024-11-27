// To parse this JSON data, do
//
//     final registerModal = registerModalFromJson(jsonString);

import 'dart:convert';

RegisterModal registerModalFromJson(String str) => RegisterModal.fromJson(json.decode(str));

String registerModalToJson(RegisterModal data) => json.encode(data.toJson());

class RegisterModal {
  String? authUser;
  String? authPassword;
  String? name;
  String? mobile;
  String? email;
  String? password;

  RegisterModal({
    this.authUser,
    this.authPassword,
    this.name,
    this.mobile,
    this.email,
    this.password,
  });

  factory RegisterModal.fromJson(Map<String, dynamic> json) => RegisterModal(
    authUser: json["auth_user"],
    authPassword: json["auth_password"],
    name: json["name"],
    mobile: json["mobile"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "auth_user": authUser,
    "auth_password": authPassword,
    "name": name,
    "mobile": mobile,
    "email": email,
    "password": password,
  };
}
