// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor_app/features/auth/controller/login_controller.dart';
// import 'package:vendor_app/view/config/Colors.dart';
//
// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({super.key});
//
//   @override
//   State<RegistrationScreen> createState() => _RegistrationScreenState();
// }
//
// class _RegistrationScreenState extends State<RegistrationScreen> {
//   late LoginController authProvider;
//
//   @override
//   void initState() {
//     super.initState();
//     authProvider = Provider.of<LoginController>(context, listen: false);
//     authProvider.registrationEmailController = TextEditingController();
//     authProvider.registrationNameController = TextEditingController();
//     authProvider.registrationMobileController = TextEditingController();
//     authProvider.registrationPasswordController = TextEditingController();
//     authProvider.registrationNameFocusNode = FocusNode()
//       ..addListener(() {
//         setState(() {});
//       });
//     authProvider.registrationEmailFocusNode = FocusNode()
//       ..addListener(() {
//         setState(() {});
//       });
//     authProvider.registrationMobileFocusNode = FocusNode()
//       ..addListener(() {
//         setState(() {});
//       });
//     authProvider.registrationPasswordFocusNode = FocusNode()
//       ..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Registration Screen"),
//         ),
//         body: Container(
//           width: MediaQuery.sizeOf(context).width,
//           height: MediaQuery.sizeOf(context).height,
//           padding: EdgeInsets.fromLTRB(10, 16, 16, 10).r,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 controller: authProvider.registrationNameController,
//                 focusNode: authProvider.registrationNameFocusNode,
//                 onFieldSubmitted: (event) {
//                   FocusScope.of(context)
//                       .requestFocus(authProvider.passwordFocusNode);
//                 },
//                 decoration: InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0).r,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: greyColor),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: AppColors.primary),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   fillColor: AppColors.white,
//                   focusColor: AppColors.white,
//                   filled:
//                       authProvider.registrationNameController.text.isEmpty &&
//                           !authProvider.registrationNameFocusNode.hasFocus,
//                   hintText: "Name",
//                   // You can change this text to something more descriptive
//                   hintStyle: Theme.of(context)
//                       .textTheme
//                       .bodySmall
//                       ?.copyWith(color: greyColor),
//                   prefixIconConstraints: BoxConstraints(maxWidth: 45).r,
//                 ),
//                 onChanged: (value) {},
//               ),
//               SizedBox(height: 10.r),
//               TextFormField(
//                 controller: authProvider.registrationEmailController,
//                 focusNode: authProvider.registrationEmailFocusNode,
//                 onFieldSubmitted: (event) {
//                   FocusScope.of(context)
//                       .requestFocus(authProvider.passwordFocusNode);
//                 },
//                 decoration: InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0).r,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: greyColor),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: AppColors.primary),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   fillColor: AppColors.white,
//                   focusColor: AppColors.white,
//                   filled:
//                       authProvider.registrationEmailController.text.isEmpty &&
//                           !authProvider.registrationEmailFocusNode.hasFocus,
//                   hintText: "Email ",
//                   // You can change this text to something more descriptive
//                   hintStyle: Theme.of(context)
//                       .textTheme
//                       .bodySmall
//                       ?.copyWith(color: greyColor),
//                   prefixIconConstraints: BoxConstraints(maxWidth: 45).r,
//                 ),
//                 onChanged: (value) {},
//               ),
//               SizedBox(height: 10.r),
//               TextFormField(
//                 controller: authProvider.registrationMobileController,
//                 focusNode: authProvider.registrationMobileFocusNode,
//                 onFieldSubmitted: (event) {
//                   FocusScope.of(context)
//                       .requestFocus(authProvider.passwordFocusNode);
//                 },
//                 decoration: InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0).r,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: greyColor),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: AppColors.primary),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   fillColor: AppColors.white,
//                   focusColor: AppColors.white,
//                   filled:
//                       authProvider.registrationMobileController.text.isEmpty &&
//                           !authProvider.registrationMobileFocusNode.hasFocus,
//                   hintText: "Mobile Number",
//                   // You can change this text to something more descriptive
//                   hintStyle: Theme.of(context)
//                       .textTheme
//                       .bodySmall
//                       ?.copyWith(color: greyColor),
//                   prefixIconConstraints: BoxConstraints(maxWidth: 45).r,
//                 ),
//                 onChanged: (value) {},
//               ),
//               SizedBox(height: 10.r),
//               TextFormField(
//                 controller: authProvider.registrationPasswordController,
//                 focusNode: authProvider.registrationPasswordFocusNode,
//                 onFieldSubmitted: (event) {
//                   FocusScope.of(context)
//                       .requestFocus(authProvider.passwordFocusNode);
//                 },
//                 decoration: InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0).r,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: greyColor),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: AppColors.primary),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10).r,
//                     borderSide: const BorderSide(color: Colors.red),
//                   ),
//                   fillColor: AppColors.white,
//                   focusColor: AppColors.white,
//                   filled: authProvider
//                           .registrationPasswordController.text.isEmpty &&
//                       !authProvider.registrationPasswordFocusNode.hasFocus,
//                   hintText: "Password",
//                   // You can change this text to something more descriptive
//                   hintStyle: Theme.of(context)
//                       .textTheme
//                       .bodySmall
//                       ?.copyWith(color: greyColor),
//                   prefixIconConstraints: BoxConstraints(maxWidth: 45).r,
//                 ),
//                 onChanged: (value) {},
//               ),
//               SizedBox(height: 10.r),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   fixedSize: Size(MediaQuery.of(context).size.width, 48.r),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(14).r,
//                   ),
//                 ),
//                 child: Text(
//                   "Register",
//                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                       color: AppColors.white, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text("Login"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     //controllers
//     authProvider.registrationEmailController.dispose();
//     authProvider.registrationNameController.dispose();
//     authProvider.registrationMobileController.dispose();
//     authProvider.registrationPasswordController.dispose();
//     //focus node
//     authProvider.registrationNameFocusNode.dispose();
//     authProvider.registrationEmailFocusNode.dispose();
//     authProvider.registrationMobileFocusNode.dispose();
//     authProvider.registrationPasswordFocusNode.dispose();
//   }
// }
