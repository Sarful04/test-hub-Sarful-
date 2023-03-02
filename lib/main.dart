import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< master
import 'package:test_hub/featured/Student/S_login.dart';
import 'package:test_hub/featured/Teacher/register.dart';
=======
import 'package:test_hub/services/authentication.dart';
>>>>>>> master

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
<<<<<<< master
  runApp(const MaterialApp(
    home: RegisterPage(),
=======
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthService().handleAuthState(),
>>>>>>> master
  ));
}
