


import 'package:vendor_app/main.dart';
import 'package:vendor_app/modul/authentication/LoginModal.dart';
import 'package:vendor_app/modul/authentication/login_response_modal.dart';

class DbHelper{
  static Future<void> saveUserInfo(LoginResponseModal value) async{
    sharedPref.vend0rId = value.vendor?.vendorId ?? 0;


  }
  static Future<void> saveToken(String token)async{
    sharedPref.token = token;
  }


}