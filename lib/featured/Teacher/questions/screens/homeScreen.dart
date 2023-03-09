import 'package:flutter/material.dart';
import '../../creation.dart';
import '../../drawerlist.dart';
import '../../set_paper.dart';

class QuestionHomeScreen extends StatelessWidget {
  const QuestionHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
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
            backgroundColor: const Color.fromARGB(255, 132, 195, 250),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
            title: const Text('Test Hub'),
            bottom: const TabBar(
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
          body: const TabBarView(children: [T_Creation(), Setpaper()]),
        ),
      ),
    );

  }
}
