import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_hub/featured/Student/S_login.dart';
import 'package:test_hub/featured/Teacher/T_home.dart';
import 'package:test_hub/featured/Teacher/groups.dart';
import 'package:test_hub/featured/Teacher/groups_option.dart';
import 'package:test_hub/featured/Teacher/register.dart';
import 'package:test_hub/screens/splash_screen.dart';
import 'package:test_hub/services/authentication.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    routes: {
      "/": (context) => GroupsPage(),
      "/T_home": (context) => THomePage(),
      "/groups_option": (context) => Groups_Option(),
      // "/": (context) => SplashScreen(),
      // "/register": (context) => RegisterPage(),
      // "/S_login": (context) => LoginPage(),
    },
    debugShowCheckedModeBanner: false,
    // home: AuthService().handleAuthState(),
  ));
}
