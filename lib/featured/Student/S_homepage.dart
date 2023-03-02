import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/services/authentication.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';
import 'package:test_hub/shared/widgets/test_detail_card.dart';

class StudentHomepage extends StatefulWidget {
  const StudentHomepage({super.key});

  @override
  State<StudentHomepage> createState() => _StudentHomepageState();
}

class _StudentHomepageState extends State<StudentHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawerDragStartBehavior: DragStartBehavior.start,
        drawer: SafeArea(
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 132, 195, 250),
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('My Tests'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Result'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 132, 195, 250))),
                    onPressed: () {
                      AuthService().signOut();
                    },
                    child: const Text("logout")),
              ],
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: Text(FirebaseAuth.instance.currentUser!.displayName!),
        // ),
        body: SafeArea(
            child: Container(
                height: DeviceDimensions.deviceHeight(context),
                width: DeviceDimensions.deviceWidth(context),
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: const Icon(
                              Icons.menu,
                              size: 30,
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(FirebaseAuth
                                  .instance.currentUser!.photoURL!)),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AutoSizeText(
                        "Hello, ${FirebaseAuth.instance.currentUser!.displayName!}! 👋",
                        style: GoogleFonts.nunito(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        "you have 3 active tests",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const TestDetailCard(),
                      const Spacer(),
                    ],
                  ),
                ))));
  }
}
