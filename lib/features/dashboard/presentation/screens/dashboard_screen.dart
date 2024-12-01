import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendor_app/features/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:vendor_app/features/dashboard/presentation/widgets/dashboard_icons.dart';
import 'package:vendor_app/view/config/Colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late DashboardController dashBoardController;

  @override
  void initState() {
    // TODO: implement initState
    dashBoardController =
        Provider.of<DashboardController>(context, listen: false);
    dashBoardController.isSelectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DashboardController>(builder: (context, dashBoard, child) {
        return PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: dashBoard.pageList.length,
          controller: dashBoard.pageController,
          itemBuilder: (context, index) {
            return dashBoard.pageList[index];
          },
        );
      }),
      bottomNavigationBar: Container(
        height: 80.r,
        // margin: EdgeInsets.only(right:10,left: 10),
        decoration: BoxDecoration(
            color: AppColor.white,
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(24), topRight: Radius.circular(24))

        ),

        child: Row(
          children: [
            DashboardIcons(
              icon: Icon(
                Icons.home,
                size: dashBoardController.isSelectedIndex == 0 ? 32 : 24,
              ),
              label: 'home',
            ),
            DashboardIcons(
              icon: Icon(
                Icons.wallet,
                size: 24,
              ),
              label: 'Wallate',
            ),
            DashboardIcons(
              icon: Icon(
                Icons.camera_alt,
                size: 24,
              ),
              label: 'Scanner',
            ),
            DashboardIcons(
              icon: Icon(
                Icons.history,
                size: 24,
              ),
              label: 'History',
            ),
            DashboardIcons(
              icon: Icon(
                Icons.settings,
                size: 24,
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
