import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendor_app/core/service/auth_service/auth_service.dart';
import 'package:vendor_app/features/auth/controller/login_controller.dart';
import 'package:vendor_app/features/dashboard/presentation/widgets/dashboard_icons.dart';
import 'package:vendor_app/main.dart';
import 'package:vendor_app/view/config/Colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late LoginController authProvider;

  AuthService authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    authProvider = Provider.of<LoginController>(context, listen: false);
    print(sharedPref.token);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: EdgeInsets.fromLTRB(10, 16, 16, 10).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.r,
          // margin: EdgeInsets.only(right:10,left: 10),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24))),

          child: Row(
            children: [
              DashboardIcons(icon: Icon(Icons.home,size: 24,), label: 'home',),
              DashboardIcons(icon: Icon(Icons.wallet,size: 24,), label: 'Walate',),
              DashboardIcons(icon: Icon(Icons.camera_alt,size: 24,), label: 'Scanner',),
              DashboardIcons(icon: Icon(Icons.history,size: 24,), label: 'History',),
              DashboardIcons(icon: Icon(Icons.settings,size: 24,), label: 'Setting',),

            ],
          ),
        ),
      ),
    );
  }
}
