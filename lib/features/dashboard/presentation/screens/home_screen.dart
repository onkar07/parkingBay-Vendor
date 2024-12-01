import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendor_app/features/dashboard/presentation/widgets/dashboard_button.dart';
import 'package:vendor_app/view/config/Colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 8, 8),
          child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: AppColor.black,
                size: 24.r,
              )),
        ),
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColor.black,
              fontWeight: FontWeight.w500,
              fontFamily: "Lora"),
        ),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.fromLTRB(10, 4, 16, 10).r,
        child: Column(
          children: <Widget>[
            Placeholder(
              fallbackHeight: 120.r,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10).r,
              decoration: BoxDecoration(
                color: AppColor.containerGrey,
                borderRadius: BorderRadius.circular(10).r,
              ),
              height: 70.r,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bike_scooter),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Offline - 001"),
                          Text("Offline - 001")
                        ],
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: AppColor.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bike_scooter),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Offline - 001"),
                          Text("Offline - 001")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10).r,
              decoration: BoxDecoration(
                color: AppColor.containerGrey,
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text("Hello, Ruturaj Patil"),
                        Icon(Icons.person_off)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10).r,
              decoration: BoxDecoration(
                color: AppColor.containerGrey,
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.qr_code,size: 100,),
                          Text("Offline - 001"),
                        ],
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: AppColor.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_history,size: 100,),
                          Text("Offline - 001"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10).r,
              child: DashboardButton(
                onPressed: () {

                },
                buttonTitle: 'Book Now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
