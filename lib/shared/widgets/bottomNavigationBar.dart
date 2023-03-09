import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_hub/featured/Student/homeScreen.dart';

class MypersistentBottomNavBar extends StatelessWidget {
  const MypersistentBottomNavBar({super.key});

  List<Widget> _screens() {
    return [const StudentHomepage()];
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 40,
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        title: "HOME",
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
        inactiveIcon: const Image(
          image: AssetImage(
            "assets/home_FILL.png",
          ),
          color: Color.fromARGB(255, 37, 208, 219),
        ),
        icon: const Image(
          image: AssetImage(
            "assets/home_FILL.png",
          ),
          color: Color.fromARGB(255, 37, 208, 219),
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        title: "FIND",
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
        icon: const Image(
          height: 35,
          width: 35,
          image: AssetImage(
            "assets/search_FILL.png",
          ),
          color: Color.fromARGB(255, 37, 208, 219),
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
        icon: const Image(
          height: 35,
          width: 35,
          image: AssetImage(
            "assets/person_FILL.png",
          ),
          color: Color.fromARGB(255, 37, 208, 219),
        ),
        title: 'LIBRARY',
      ),
      PersistentBottomNavBarItem(
        contentPadding: 1,
        iconSize: 80,
        activeColorSecondary: const Color.fromARGB(255, 37, 208, 219),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
        icon: const Image(
          // height: 50,
          // width: 25,
          image: AssetImage(
            "assets/amazon_alexa.png",
          ),
          color: Color.fromARGB(255, 37, 208, 219),
        ),
        // title: 'ALEXA',
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
