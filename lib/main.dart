import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendor_app/controller/sharedPref/share_pref.dart';
import 'package:vendor_app/features/auth/controller/login_controller.dart';
import 'package:vendor_app/features/auth/presentation/screens/login_screen.dart';
import 'package:vendor_app/view/config/Themes.dart';
import 'package:vendor_app/view/screens/authentication/my_home_screen.dart';

final sharedPref = SharedPrefs();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  sharedPref.init();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
            create: (_) => LoginController()),
      ],
      child: ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: false,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: appTheme,
              // home: const MyHomePage(title: 'Flutter Demo Home Page'),
              home: LoginScreen()
            );
          }),
    );
  }
}
