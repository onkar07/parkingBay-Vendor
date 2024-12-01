import 'package:flutter/cupertino.dart';
import 'package:vendor_app/features/dashboard/presentation/screens/home_screen.dart';

class DashboardController with ChangeNotifier {
  final PageController pageController = PageController();
  int isSelectedIndex = 0;

  final List<Widget> pageList = <Widget>[
    HomeScreen(),
  ];


  void onItemTapped(int index) {
    isSelectedIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }
}
