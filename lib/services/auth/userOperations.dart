import 'package:firebase_auth/firebase_auth.dart';

class UserOperations {
  final FirebaseAuth _auth =
      FirebaseAuth.instance; // Instance Create of FireBase Auth

  Future<String> register(String email, String password) async {
    UserCredential userCred = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    User user = userCred.user!;
    String emailId = user.email!;
    return emailId;
  }

  Future<String> login(String email, String password) async {
    UserCredential cred = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    if (cred.user == null) {
      return "";
    } else {
      String? userEmail = cred.user?.email;
      return userEmail.toString();
    }
  }
}
