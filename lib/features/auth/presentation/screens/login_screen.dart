import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendor_app/features/auth/controller/login_controller.dart';
import 'package:vendor_app/features/auth/presentation/screens/registration_screen.dart';
import 'package:vendor_app/features/auth/presentation/widgets/auth_text_filed.dart';
import 'package:vendor_app/view/config/Colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController authProvider;

  @override
  void initState() {
    super.initState();
    authProvider = Provider.of<LoginController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Login Screen"),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: EdgeInsets.fromLTRB(10, 16, 16, 10).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AuthTextFiled(
                focusNode: authProvider.userNameFocusNode,
                controller: authProvider.userNameController,
                onFieldSubmitted: (event) {
                  FocusScope.of(context)
                      .requestFocus(authProvider.passwordFocusNode);
                },
                hintText: 'Enter User name',
              ),
              SizedBox(height: 10.r),
              AuthTextFiled(
                focusNode: authProvider.passwordFocusNode,
                controller: authProvider.passwordController,
                onFieldSubmitted: (event) {
                  FocusScope.of(context)..unfocus();
                },
                hintText: "Password",
              ),
              SizedBox(height: 10.r),
              TextButton(
                onPressed: () {
                  authProvider.login(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(MediaQuery.of(context).size.width, 48.r),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14).r,
                  ),
                ),
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColor.white, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // GestureDetector(
              //     onTap: (){
              //       Navigator.push(context, MaterialPageRoute(builder: (_)=>RegistrationScreen()));
              //     },
              //     child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
