import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/view/config/Colors.dart';

class DashboardIcons extends StatelessWidget {
  const DashboardIcons({super.key,this.onTap, required this.icon, required this.label});

  final Function()? onTap;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: InkWell(
        onTap:onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(
                  color:AppColor.black,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
