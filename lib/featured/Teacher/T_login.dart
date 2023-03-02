import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_hub/featured/Teacher/creation.dart';
import 'package:test_hub/featured/Teacher/drawerlist.dart';
import 'package:test_hub/featured/Teacher/set_paper.dart';

class TeacherLogin extends StatefulWidget {
  const TeacherLogin({super.key});

  @override
  State<TeacherLogin> createState() => _TeacherLoginState();
}

class _TeacherLoginState extends State<TeacherLogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/tec.jpg',
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      left: 20,
                      top: 0,
                      child: Container(
                          height: 50, child: Image.asset('assets/acc.jpg')),
                    ),
                  ],
                )),
                DrawerList(Icons.assignment_add, 'Create new Test', (){}),
                DrawerList(Icons.arrow_drop_down_sharp, 'Tests Live', (){}),
                DrawerList(Icons.supervisor_account_outlined, 'developer contacts', (){}),
                DrawerList(Icons.sms_outlined, 'Send Feedback', (){}),
                DrawerList(Icons.privacy_tip_outlined, 'Privacy Policy', (){}),
                DrawerList(Icons.share_outlined, 'Share App ', (){}),
                DrawerList(Icons.logout, 'Logout', (){}),
                DrawerList(Icons.delete_outlined, 'Delete Account', (){})

          ]),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 132, 195, 250),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
          title: Text('Test Hub'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'YOUR CREATIONS',
              ),
              Tab(
                text: 'SET PAPER',
              )
            ],
          ),
        ),
        body: TabBarView(children: [T_Creation(), Setpaper()]),
      ),
    );
  }
}
