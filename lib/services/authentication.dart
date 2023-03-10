import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_hub/featured/Student/S_homepage.dart';
import 'package:test_hub/shared/widgets/bottomNavigationBar.dart';

import '../featured/join/loginScreen.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class AuthService {
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            //return RouteAnimation().createRoute(LandingPage());
            //return const LandingPage();
            return const MypersistentBottomNavBar();
          } else {
            return const LoginPage();
          }
        });
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? user =
        await GoogleSignIn(scopes: ['email']).signIn();
    final GoogleSignInAuthentication auth = await user!.authentication;
    final credentials = GoogleAuthProvider.credential(
        accessToken: auth.accessToken, idToken: auth.idToken);

    return await FirebaseAuth.instance.signInWithCredential(credentials);
  }

  Future<void> signOut() async {
    await GoogleSignIn().disconnect();
    await _firebaseAuth.signOut();
  }
}
