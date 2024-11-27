import 'package:flutter/material.dart';




class AppRoute {
  final Map<String, Widget Function(BuildContext)> _routes = <String, Widget Function(BuildContext p1)>{



  };
  Map<String, Widget Function(BuildContext)> get routes => _routes;

}
