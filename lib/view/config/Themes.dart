
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/view/config/Colors.dart';



final ThemeData appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
     // backgroundColor:AppColors.background ,
    scaffoldBackgroundColor: AppColor.background,
    colorScheme: ColorScheme.fromSwatch().copyWith(primary: AppColor.primary),
    primaryColor: AppColor.primary,
     textTheme: _appTheme(base.textTheme),
    // textTheme:  Typography.englishLike2021.apply(fontSizeFactor: 1.sp,bodyColor:Colors.black,fontFamily: "Roboto"),
    //inputDecorationTheme: InputDecorationTheme()
  );
}

TextTheme _appTheme(TextTheme base) {
  return base.copyWith(
    // fontsize:28
    headlineMedium: const TextTheme().headlineMedium?.copyWith(
      fontSize: const TextTheme().headlineMedium?.fontSize?.sp,
    ),

    // fontsize:24
    headlineSmall: const TextTheme().headlineSmall?.copyWith(
      fontSize: const TextTheme().headlineSmall?.fontSize?.sp,
    ),
    // fontsize:22
    titleLarge: const TextTheme().titleLarge?.copyWith(
      fontSize: const TextTheme().titleLarge?.fontSize?.sp,
    ),
    // fontsize:16
    titleMedium: const TextTheme().titleMedium?.copyWith(
      fontSize: const TextTheme().titleMedium?.fontSize?.sp,
    ),
    // fontsize:14
    titleSmall: const TextTheme().titleSmall?.copyWith(
      fontSize: const TextTheme().titleSmall?.fontSize?.sp,
    ),
    // fontsize:16
    bodyLarge: const TextTheme().bodyLarge?.copyWith(
      fontSize: const TextTheme().bodyLarge?.fontSize?.sp,
    ),
    // fontsize:14
    bodyMedium: const TextTheme().bodyMedium?.copyWith(
      fontSize: const TextTheme().bodyMedium?.fontSize?.sp,
    ),
    // fontsize:12
    bodySmall: const TextTheme().bodySmall?.copyWith(
      fontSize: const TextTheme().bodySmall?.fontSize?.sp,
    ),
    // fontsize:14
    labelLarge: const TextTheme().labelLarge?.copyWith(
      fontSize: const TextTheme().labelLarge?.fontSize?.sp,
    ),
    // fontsize:12
    labelMedium: const TextTheme().labelMedium?.copyWith(
      fontSize: const TextTheme().labelMedium?.fontSize?.sp,
    ),
    // fontsize:11
    labelSmall: const TextTheme().labelSmall?.copyWith(
      fontSize: const TextTheme().labelSmall?.fontSize?.sp,
    ),
  );
}
// TextStyleItem(name: 'Display Large', style: textTheme.displayLarge!, text: 'Regular 57/64 +0'),
// TextStyleItem(name: 'Display Medium', style: textTheme.displayMedium!, text: 'Regular 45/52 +0'),
// TextStyleItem(name: 'Display Small', style: textTheme.displaySmall!, text: 'Regular 36/44 +0'),
// TextStyleItem(name: 'Headline Large', style: textTheme.headlineLarge!, text: 'Regular 32/40 +0'),
// TextStyleItem(name: 'Headline Medium', style: textTheme.headlineMedium!, text: 'Regular 28/36 +0'),
// TextStyleItem(name: 'Headline Small', style: textTheme.headlineSmall!, text: 'Regular 24/32 +0'),
// TextStyleItem(name: 'Title Large', style: textTheme.titleLarge!, text: 'Medium 22/28 +0'),
// TextStyleItem(name: 'Title Medium', style: textTheme.titleMedium!, text: 'Medium 16/24 +0.15'),
// TextStyleItem(name: 'Title Small', style: textTheme.titleSmall!, text: 'Medium 14/20 +0.1'),
// TextStyleItem(name: 'Body Large', style: textTheme.bodyLarge!, text: 'Regular 16/24 +0.5'),
// TextStyleItem(name: 'Body Medium', style: textTheme.bodyMedium!, text: 'Regular 14/20 +0.25'),
// TextStyleItem(name: 'Body Small', style: textTheme.bodySmall!, text: 'Regular 12/16 +0.4'),
// TextStyleItem(name: 'Label Large', style: textTheme.labelLarge!, text: 'Medium 14/20 +0.1'),
// TextStyleItem(name: 'Label Medium', style: textTheme.labelMedium!, text: 'Medium 12/16 +0.5'),
// TextStyleItem(name: 'Label Small', style: textTheme.labelSmall!, text: 'Medium 11/16 +0.5'),