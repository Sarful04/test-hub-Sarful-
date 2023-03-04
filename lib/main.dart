import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_hub/featured/Student/S_login.dart';
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
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => SplashScreen(),
      "/register": (context) => RegisterPage(),
      "/S_login": (context) => LoginPage(),
    },
    //home: RegisterPage(),
    // debugShowCheckedModeBanner: false,
    // home: AuthService().handleAuthState(),
  ));
}
