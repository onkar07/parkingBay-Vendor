import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/view/config/Colors.dart';

class AuthTextFiled extends StatelessWidget {
  const AuthTextFiled({
    super.key,
    this.focusNode,
    required this.controller,
    this.onFieldSubmitted,
    this.suffix,
    this.filled = true,
    required this.hintText,
  });

  final FocusNode? focusNode;
  final TextEditingController controller;
  final Function(String)? onFieldSubmitted;
  final Widget? suffix;
  final bool filled;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        focusNode: focusNode,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0).r,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: AppColor.background),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: AppColor.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: AppColor.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: Colors.red),
          ),
          fillColor: AppColor.white,
          focusColor: AppColor.white,
          // filled: controller.text.isEmpty &&
          //     !focusNode!.hasFocus,
          filled: filled,
          hintText: hintText,

          // You can change this text to something more descriptive
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColor.grey),
        ),
        cursorColor: AppColor.primary);
  }
}
