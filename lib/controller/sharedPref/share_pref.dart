

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{

  SharedPreferences? _sharedPreferences;

  static const keyToken = "token";
  static const keyUserId  = "vend0rId";
  static const keyEmail =  "emailId";






  init() async{
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  clear(){
    if(_sharedPreferences != null){
      _sharedPreferences?.clear();
    }
  }

  String get token =>_sharedPreferences?.getString(keyToken) ?? "";

  set token(String value){
    _sharedPreferences?.setString(keyToken, value);
  }

  int get vend0rId =>_sharedPreferences?.getInt(keyUserId) ?? 0;

  set vend0rId(int value){
    _sharedPreferences?.setInt(keyUserId, value);
  }



}