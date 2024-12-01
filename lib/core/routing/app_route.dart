import 'package:flutter/material.dart';
import 'package:vendor_app/core/routing/app_route_name.dart';
import 'package:vendor_app/features/dashboard/presentation/screens/dashboard_screen.dart';

class AppRoute {


  final Map<String, Widget Function(BuildContext)> _routes = {
    AppRouteName.dashBoard: (context) =>  const DashboardScreen(),


  };
  Map<String, Widget Function(BuildContext)> get routes => _routes;

}
