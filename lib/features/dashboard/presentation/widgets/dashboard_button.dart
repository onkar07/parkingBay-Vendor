import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/view/config/Colors.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({super.key,required this.onPressed, required this.buttonTitle});

  final VoidCallback onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primary,
        fixedSize: Size(MediaQuery.of(context).size.width,40.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50).r,
        ),
      ),
      child: Text(
        buttonTitle,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: AppColor.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
