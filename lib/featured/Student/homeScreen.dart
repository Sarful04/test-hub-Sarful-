import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';
import 'package:test_hub/shared/widgets/studentWidgets/myDrawer.dart';
import 'package:test_hub/shared/widgets/studentWidgets/s_homepageTopContainer.dart';

import '../../shared/widgets/test_detail_card.dart';

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
        appBar: AppBar(
          centerTitle: true,
          title: const AutoSizeText("I am Student Homepage"),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 20, 115, 220),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
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
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) / 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Your assigned tests.",
                            maxLines: 1,
                            style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SingleChildScrollView(
                            physics: const ScrollPhysics(
                                parent: PageScrollPhysics()),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                                TestDetailCard(
                                  cardMessage: 'DSA QUIZ',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: DeviceDimensions.deviceHeight(context) / 35,
                          ),
                          Container(
                            height:
                                DeviceDimensions.deviceHeight(context) / 2.5,
                            width: DeviceDimensions.deviceWidth(context),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(68, 158, 158, 158),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: DeviceDimensions.deviceWidth(context),
                                  height:
                                      DeviceDimensions.deviceHeight(context) /
                                          5,
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25)),
                                    child: Image(
                                      image: NetworkImage(
                                        "https://i.pinimg.com/736x/0a/39/eb/0a39eb86bdeccb97e6e53481e39cf402.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      AutoSizeText(
                                        "Chemistry Test",
                                        maxLines: 1,
                                        style: GoogleFonts.nunito(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.label_outline_rounded)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
