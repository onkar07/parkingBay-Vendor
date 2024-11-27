// To parse this JSON data, do
//
//     final loginResponseModal = loginResponseModalFromJson(jsonString);

import 'dart:convert';

LoginResponseModal loginResponseModalFromJson(String str) => LoginResponseModal.fromJson(json.decode(str));

String loginResponseModalToJson(LoginResponseModal data) => json.encode(data.toJson());

class LoginResponseModal {
  String? message;
  Vendor? vendor;
  String? token;

  LoginResponseModal({
    this.message,
    this.vendor,
    this.token,
  });

  factory LoginResponseModal.fromJson(Map<String, dynamic> json) => LoginResponseModal(
    message: json["message"],
    vendor: json["vendor"] == null ? null : Vendor.fromJson(json["vendor"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "vendor": vendor?.toJson(),
    "token": token,
  };
}

class Vendor {
  int? vendorId;
  String? firstName;
  String? lastName;
  String? email;
  String? contact;
  String? otp;
  String? gender;
  String? profile;
  String? city;
  int? state;
  String? country;
  int? status;
  String? isDeleted;
  DateTime? createdAt;
  DateTime? updatedAt;

  Vendor({
    this.vendorId,
    this.firstName,
    this.lastName,
    this.email,
    this.contact,
    this.otp,
    this.gender,
    this.profile,
    this.city,
    this.state,
    this.country,
    this.status,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
    vendorId: json["vendor_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    contact: json["contact"],
    otp: json["otp"],
    gender: json["gender"],
    profile: json["profile"],
    city: json["city"],
    state: json["state"],
    country: json["country"],
    status: json["status"],
    isDeleted: json["is_deleted"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "vendor_id": vendorId,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "contact": contact,
    "otp": otp,
    "gender": gender,
    "profile": profile,
    "city": city,
    "state": state,
    "country": country,
    "status": status,
    "is_deleted": isDeleted,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
