
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/view/config/Colors.dart';

class DialogHelper {
  static CircularProgressIndicator circleProgressIndicator(BuildContext context,
      {Color? color}) {
    return CircularProgressIndicator(
        color: color ?? Colors.purple, strokeWidth: 3.0.r);
  }

  static void showAlertDialogWithoutClose(
      BuildContext context,
      String title,
      String message,
      String primaryText,
      String secondaryText,
      VoidCallback primaryAction,
      VoidCallback secondaryAction,
      ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          elevation: 24,
          titlePadding: const EdgeInsets.fromLTRB(28, 20, 20, 0).r,
          contentPadding: const EdgeInsets.fromLTRB(28, 24, 28, 24).r,
          insetPadding: const EdgeInsets.all(22).r,
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12).r,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(title,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.purple, fontWeight: FontWeight.w500)),
              ),
              // InkWell(
              //   child: Icon(
              //     AppIcons.close_fill1_wght400_grad0_opsz48_1,
              //     color: blackColor,
              //     size: 24.r,
              //   ),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
          content: SizedBox(
            width: 343.r,
            child: Container(
              child: Text(message,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w500, color: AppColor.black)),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: AppColor.white,
                        fixedSize: Size(138.r, 38.r),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(14).r,
                        ),
                        visualDensity: VisualDensity.compact,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: primaryAction,
                    child: Text(
                      primaryText,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700, color: AppColor.black),
                    )),
                SizedBox(
                  width: 8.r,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      fixedSize: Size(138.r, 38.r),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.circular(14).r,
                      ),
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: secondaryAction,
                  child: Text(secondaryText,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700, color: AppColor.white)),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  static void showAlertWithoutClose(BuildContext context, String message, String okText,
      VoidCallback? success) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 24,
          titlePadding: const EdgeInsets.fromLTRB(28, 20, 20, 0).r,
          contentPadding: const EdgeInsets.fromLTRB(28, 24, 28, 24).r,
          insetPadding: const EdgeInsets.all(22).r,
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 8).r,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).r),
          // title: Align(
          //   alignment: Alignment.topRight,
          //   child: InkWell(
          //     child: Icon(
          //       Icons.close,
          //       color: Colors.purple,
          //       size: 24.r,
          //     ),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
          content: SizedBox(
            width: 343.r,
            child: Text(message,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700, color: Colors.purple),
                textAlign: TextAlign.center),
          ),
          actions: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(140.r, 42.r),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact),
                onPressed: success ??
                        () {
                      Navigator.pop(context);
                    },
                child: Text(
                  okText,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700, color: AppColor.white),
                )),
          ],
        );
      },
    );
  }

  // static void showToast(String message) {
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.purple,
  //       textColor: whiteColor,
  //       fontSize: 16.0);
  // }

  static void showCircleProgressIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(child: circleProgressIndicator(context));
      },
    );
  }

  static void hideProgress(BuildContext context) {
    Navigator.pop(context);
  }

  // static void toastMassage(BuildContext context, String message) {
  //   final toast = FToast();
  //   toast.init(context);
  //   return toast.showToast(
  //       gravity: ToastGravity.BOTTOM,
  //       child: Container(
  //         width: 300.r,
  //         alignment: Alignment.center,
  //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12).r,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(16).r, color: whiteColor),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(message, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.purple,fontWeight: FontWeight.w500))
  //           ],
  //         ),
  //       ));
  // }
  static void showAlertDialog(
      BuildContext context,
      String title,
      String message,
      String primaryText,
      String secondaryText,
      VoidCallback primaryAction,
      VoidCallback secondaryAction,
      ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          elevation: 24,
          titlePadding: const EdgeInsets.fromLTRB(28, 20, 20, 0).r,
          contentPadding: const EdgeInsets.fromLTRB(28, 24, 28, 24).r,
          insetPadding: const EdgeInsets.all(22).r,
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12).r,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(title,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.purple, fontWeight: FontWeight.w500)),
              ),
              InkWell(
                child: Icon(
                  Icons.clear,
                  color: AppColor.black,
                  size: 24.r,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          content: SizedBox(
            width: 343.r,
            child: Container(
              child: Text(message,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w500, color: AppColor.black)),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: AppColor.white,
                        fixedSize: Size(138.r, 38.r),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(14).r,
                        ),
                        visualDensity: VisualDensity.compact,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: primaryAction,
                    child: Text(
                      primaryText,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700, color: AppColor.black),
                    )),
                SizedBox(
                  width: 8.r,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      fixedSize: Size(138.r, 38.r),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.circular(14).r,
                      ),
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: secondaryAction,
                  child: Text(secondaryText,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700, color: AppColor.white)),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  static void showAlert(BuildContext context, String message, String okText,
      VoidCallback? success) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 24,
          titlePadding: const EdgeInsets.fromLTRB(28, 20, 20, 0).r,
          contentPadding: const EdgeInsets.fromLTRB(28, 24, 28, 24).r,
          insetPadding: const EdgeInsets.all(22).r,
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 8).r,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).r),
          title: Align(
            alignment: Alignment.topRight,
            child: InkWell(
              child: Icon(
                Icons.close,
                color: Colors.purple,
                size: 24.r,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          content: SizedBox(
            width: 343.r,
            child: Text(message,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700, color: AppColor.black),
                textAlign: TextAlign.center),
          ),
          actions: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(140.r, 42.r),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact),
                onPressed: success ??
                        () {
                      Navigator.pop(context);
                    },
                child: Text(
                  okText,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700, color: AppColor.white),
                )),
          ],
        );
      },
    );
  }

  static Future showAlertDialogUpdate(BuildContext context, Widget alert)  async{
    // show the dialog
    var result = await showDialog (
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alert;
      },
    );
    return result;
  }

}
