import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendor_app/features/auth/controller/login_controller.dart';
import 'package:vendor_app/features/auth/presentation/widgets/auth_button.dart';
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
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: EdgeInsets.fromLTRB(10, 16, 16, 10).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5).r,
                    child: Text(
                      "Welcome back.",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w700,),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10).r,
                      child: Text("Log in to your account",  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w400,),)),
                ],
              ),
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
              Text(
                  "You will receive an SMS verification that may apply message and data rates.",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColor.black, fontWeight: FontWeight.w400,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10).r,
                child: AuthButton(
                  onPressed: () {
                    authProvider.login(context);
                  },
                  buttonTitle: 'Log in',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>RegistrationScreen()));
                      },
                      child: Text("Use email, instead")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
