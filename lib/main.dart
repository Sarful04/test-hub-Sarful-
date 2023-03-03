// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_hub/featured/Student/S_login.dart';
import 'package:test_hub/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashScreen(),
        routes: {
          "/": (context) => SplashScreen(),
          "/S_login": (context) => LoginPage(),
        }),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: LoginPage(),
//     );
//   }
// }

// void main() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const TempScreen());
// }
