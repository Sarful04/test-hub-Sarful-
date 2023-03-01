import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class AuthService {
  handleAuthState() {
    // return StreamBuilder(
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     builder: (BuildContext context, snapshot) {
    //       if (snapshot.hasData) {
    //         //return RouteAnimation().createRoute(LandingPage());
    //         //return const LandingPage();
    //         return const Temp();
    //       } else {
    //         return const UserScreen();
    //       }
    //     });
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
    //await GoogleSignIn().disconnect();
    await _firebaseAuth.signOut();
  }
}
