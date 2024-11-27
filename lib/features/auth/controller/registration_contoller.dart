import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/controller/sharedPref/db_helper.dart';
import 'package:vendor_app/core/service/auth_service/auth_service.dart';
import 'package:vendor_app/core/service/helper/AppException.dart';
import 'package:vendor_app/modul/authentication/LoginModal.dart';
import 'package:vendor_app/view/screens/authentication/my_home_screen.dart';
import 'package:vendor_app/view/widget/dialog_helper.dart';

class RegistrationController with ChangeNotifier {
  AuthService authService = AuthService();



  late FocusNode registrationEmailFocusNode;
  late FocusNode registrationNameFocusNode;
  late FocusNode registrationMobileFocusNode;
  late FocusNode registrationPasswordFocusNode;



  //registration controller
  TextEditingController registrationNameController =  TextEditingController();
  TextEditingController registrationEmailController =  TextEditingController();
  TextEditingController registrationMobileController =  TextEditingController();
  TextEditingController registrationPasswordController =  TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}
