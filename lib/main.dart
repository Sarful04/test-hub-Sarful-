import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hub/featured/Student/S_homepage.dart';
import 'package:test_hub/featured/Student/S_login.dart';
import 'package:test_hub/screens/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp.router(
    routerConfig: _router,
    debugShowCheckedModeBanner: false,
    //home: AuthService().handleAuthState(),
  ));
}

final GoRouter _router = GoRouter(
  initialLocation: "/",

  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/s_login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/s_homepage',
      builder: (BuildContext context, GoRouterState state) {
        return const StudentHomepage();
      },
    ),
  ],
  // routes: <RouteBase>[
  //   GoRoute(
  //     path: '/',
  //     builder: (BuildContext context, GoRouterState state) {
  //       return const SplashScreen();
  //     },
  //     routes: <RouteBase>[
  //       GoRoute(
  //         path: 'details',
  //         builder: (BuildContext context, GoRouterState state) {
  //           return const StudentHomepage();
  //         },
  //       ),
  //     ],
  //   ),
  // ],
);
