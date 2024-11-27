import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/controller/sharedPref/db_helper.dart';
import 'package:vendor_app/core/service/auth_service/auth_service.dart';
import 'package:vendor_app/core/service/helper/AppException.dart';
import 'package:vendor_app/modul/authentication/LoginModal.dart';
import 'package:vendor_app/view/screens/authentication/my_home_screen.dart';
import 'package:vendor_app/view/widget/dialog_helper.dart';

class LoginController with ChangeNotifier {
  AuthService authService = AuthService();
   FocusNode userNameFocusNode = FocusNode();
   FocusNode passwordFocusNode = FocusNode();

  //login controller
  TextEditingController userNameController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();

  login(BuildContext context) {
    LoginModal loginModal = LoginModal(authUser: "auth@auth.com", authPassword: "auth#!123");
    DialogHelper.showCircleProgressIndicator(context);
    FocusScope.of(context).unfocus();
    authService.login(loginModal).then((onValue) {
      DbHelper.saveToken(onValue.token!);
      DbHelper.saveUserInfo(onValue);
      DialogHelper.hideProgress(context);
    Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage(title: "Home Page")));
    }).catchError((onError) {
      DialogHelper.hideProgress(context);
      if(onError is AppException){
        print(onError.errorCode);
        // aks ali to thi s
        // give exception not parce give error null is not subtype of string;
        print(onError);
        DialogHelper.showAlertWithoutClose(context, "erros " , "Ok", () {
          Navigator.pop(context);
        });
      }
    });
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    userNameFocusNode.dispose();
    super.dispose();
  }
}
