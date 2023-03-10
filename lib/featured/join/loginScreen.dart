import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/services/auth/authentication.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';
import 'package:test_hub/shared/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginfield = GlobalKey<_LoginPageState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 60,
          ),
          child: Form(
            key: _loginfield,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/loginPageImage.png",
                    height: DeviceDimensions.deviceHeight(context) / 4,
                    width: DeviceDimensions.deviceWidth(context) / 2,
                  ),
                  SizedBox(height: DeviceDimensions.deviceHeight(context) / 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "User Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                    // validator: (value) {
                    //   bool emailValid = RegExp(
                    //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //       .hasMatch(value!);
                    //   if (value.isEmpty) {
                    //     return "Enter Email";
                    //   } else if (!emailValid) {
                    //     return "Enter Vaild Email";
                    //   }
                    // },
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Enter Password";
                  //   } else if (passController.text.length < 6) {
                  //     return " Password Length Should be more than 6 characters";
                  //   }
                  // },
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                UserButton(
                    buttonText: "Log in",
                    fn: () {},
                    height: DeviceDimensions.deviceHeight(context) / 16,
                    width: DeviceDimensions.deviceWidth(context),
                    buttonColor: const Color.fromARGB(255, 132, 195, 250),
                    fontSize: 16),
                SizedBox(
                  height: DeviceDimensions.deviceHeight(context) / 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: AutoSizeText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account?",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Sign up now!",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    //AuthService().signOut();
                    AuthService().signInWithGoogle();
                  },
                  child: Container(
                    height: DeviceDimensions.deviceHeight(context) / 16,
                    // height: DeviceDimensions(context).height / 15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(255, 132, 195, 250)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: AssetImage("assets/googleIcon.png"))),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Or continue with Google",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                
              ),
                ]
            ),
          ),
  
        ),
      ),
     ) );
  }
}
