import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_hub/services/authentication.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';
import 'package:test_hub/shared/widgets/button.dart';
import 'package:test_hub/shared/widgets/studentWidgets/myDrawer.dart';
import 'package:test_hub/shared/widgets/studentWidgets/s_homepageTopContainer.dart';

class StudentHomepage extends StatefulWidget {
  const StudentHomepage({super.key});

  @override
  State<StudentHomepage> createState() => _StudentHomepageState();
}

class _StudentHomepageState extends State<StudentHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawerDragStartBehavior: DragStartBehavior.start,
        drawer: const SafeArea(child: MyDrawer()),
        body: SafeArea(
            child: Container(
                height: DeviceDimensions.deviceHeight(context),
                width: DeviceDimensions.deviceWidth(context),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StudentHomepageTopContainer(),
                    Row(
                      children: const [],
                    ),
                   
                  ],
                ))));
  }
}
