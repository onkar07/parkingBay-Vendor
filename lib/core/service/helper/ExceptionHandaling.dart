import 'package:flutter/material.dart';
import 'package:vendor_app/view/widget/dialog_helper.dart';
import 'AppException.dart';

class ExceptionHandling {
  static showAlertBox(AppException onError, BuildContext context) {
    switch (onError.errorCode) {
      case 403:
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => LoginScreen()),
      //     (route) => false);
        DialogHelper.showAlertWithoutClose(
          context,
          "Your session is expired",
          "Ok",
              (){
            // sharedPref.clear();
            // Navigator.pushAndRemoveUntil(
            //     context,
            //     MaterialPageRoute(builder: (context) => LoginScreen()),
            //         (route) => false);
                Navigator.pop(context);
          },
        );
        break;
      case 500:
        DialogHelper.showAlertWithoutClose(
          context,
          onError.message,
          "Ok",
          null,
        );
        break;
      default:
        DialogHelper.showAlertWithoutClose(context, "${onError.message}", "Ok", () {
          Navigator.pop(context);
        });
    }
  }
}
