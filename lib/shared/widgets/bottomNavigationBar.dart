import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_hub/featured/Student/S_homepage.dart';
import 'package:test_hub/featured/Teacher/T_home.dart';

class MypersistentBottomNavBar extends StatelessWidget {
  const MypersistentBottomNavBar({super.key});

  List<Widget> _screens() {
    return [const StudentHomepage(),const THomePage()];
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 40,
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        title: "HOME",
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
        // inactiveIcon: const Image(
        //   image: AssetImage(
        //     "assets/home_FILL.png",
        //   ),
        //   color: Color.fromARGB(255, 37, 208, 219),
        // ),
         icon: Icon(Icons.home),
         //const Image(
        //   image: AssetImage(
        //     "assets/home_FILL.png",
        //   ),
        //   color: Color.fromARGB(255, 37, 208, 219),
        // ),
      ),
      PersistentBottomNavBarItem(
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        title: "FIND",
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
         icon: const Icon(Icons.search_rounded)
         //const Image(
        //   height: 35,
        //   width: 35,
        //   image: AssetImage(
        //     "assets/search_FILL.png",
        //   ),
        //   color: Color.fromARGB(255, 37, 208, 219),
        // ),
      ),
         ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        
        hideNavigationBar: false,
        backgroundColor: const Color.fromARGB(255, 28, 33, 33),
        navBarStyle: NavBarStyle.style12,
        screens: _screens(),
        items: _items(),
        controller: PersistentTabController(initialIndex: 0),
      ),
    );
  }
}
