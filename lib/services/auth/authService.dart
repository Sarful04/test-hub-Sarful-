import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_hub/featured/Student/S_homepage.dart';
import 'package:test_hub/services/auth/userOperations.dart';

class AuthService {
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  final UserOperations _opr = UserOperations();
  void _doRegister() async {
    String email = registerEmail.text;
    String password = registerPassword.text;
    print("EMIAL is EMPTYyyyyyyyyyyyyyyyyyyyy$registerEmail.text");
    try {
      String fireBaseRegEmailId = await _opr.register(email, password);
      _showMessage("Register SuccessFully $fireBaseRegEmailId");
      // _index = 0;
      // _loadPages()[_index];
      // setState(() {});
    } catch (e) {
      _showMessage("Register Fails $e");
      print("Some Exception Generated During Reg $e");
    }
  }

  void _doLogin(context) async {
    try {
      String result = await _opr.login(loginEmail.text, loginPassword.text);

      if (result.isNotEmpty) {
        _showMessage("Login SuccessFully....");
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const StudentHomepage();
        }));
      } else {
        _showMessage("Invalid Userid or Password");
      }
    } catch (e) {
      _showMessage("Invalid Userid or Password");
    }
  }

  _showMessage(String msg) async {
    await Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
