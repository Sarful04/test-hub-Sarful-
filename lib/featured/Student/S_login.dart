import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _LoginPagefield = GlobalKey<_LoginPageState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/avatar.png",
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefix: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.lock),
                  // suffix: InkWell(
                  //     // onTap: () {
                  //     //   passToggle = !passToggle;
                  //     //   setState(() {});
                  //     // },
                  //     ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                // onTap: () {
                //   AuthService().signInWithGoogle();
                // },
                child: Container(
                  height: 50,
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
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
