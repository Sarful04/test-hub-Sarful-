import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final passController = TextEditingController();
  final passController1 = TextEditingController();
  bool passToggle = true;
  bool passToggle1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         'https://i2.wp.com/bobwama.wordpress.com/files/2008/11/artistic-nature-42754.jpg'),
              //     fit: BoxFit.fill)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30, left: 20),
                  child: Text(
                    'Register Here,',
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 221, 221), fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/Teacher-removebg-preview.png",
                                height: 80,
                                width: 80,
                              ),
                              const Text(
                                'Teacher Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/student-removebg.png",
                              height: 80,
                              width: 80,
                            ),
                            const Text(
                              'Student Login',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 4, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(Icons.man),
                        labelStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 4, top: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 4, top: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'User Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.verified_user_sharp),
                        labelStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 4, top: 10, right: 10),
                  child: TextField(
                    controller: passController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                        labelText: 'Create Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        labelStyle: TextStyle(color: Colors.grey)),
                    //obscureText: true,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 4, top: 10, right: 10),
                  child: TextField(
                    controller: passController1,
                    obscureText: passToggle1,
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password_sharp),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle1 = !passToggle1;
                            });
                          },
                          child: Icon(passToggle1
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        labelStyle: TextStyle(color: Colors.grey)),
                    //obscureText: true,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
