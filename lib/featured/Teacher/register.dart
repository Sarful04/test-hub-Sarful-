import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

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
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);

  late String password;

  void validate() {
    if (formkey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: DeviceDimensions.deviceHeight(context),
            width: DeviceDimensions.deviceWidth(context),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  // Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 200, 87, 87)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         'https://i2.wp.com/bobwama.wordpress.com/files/2008/11/artistic-nature-42754.jpg'),
              //     fit: BoxFit.fill)
            ),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/loginPageImage.png',
                        height: DeviceDimensions.deviceHeight(context) / 10,
                        width: DeviceDimensions.deviceWidth(context) / 7,
                      ),
                      Text(
                        'Welcome to TestHub',
                        style: TextStyle(
                            //color: Color.fromARGB(255, 22, 221, 221),
                            fontWeight: FontWeight.normal,
                            fontSize: 25),
                      ),
                    ],
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
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.black,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 6, 255, 251),
                                    radius: 30,
                                    child: Image.asset(
                                      "assets/Teacher-removebg-preview.png",
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Teacher Login',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 6, 255, 251),
                                  radius: 30,
                                  child: Image.asset(
                                    "assets/student-removebg.png",
                                  ),
                                ),
                              ),
                              const Text(
                                'Student Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 221, 221)),
                          ),
                          prefixIcon: Icon(Icons.man),
                          labelStyle: TextStyle(color: Colors.grey)),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 221, 221)),
                          ),
                          prefixIcon: Icon(Icons.email),
                          labelStyle: TextStyle(color: Colors.grey)),
                      validator: EmailValidator(errorText: 'Invalid Email'),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'User Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 221, 221)),
                          ),
                          prefixIcon: Icon(Icons.verified_user_sharp),
                          labelStyle: TextStyle(color: Colors.grey)),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: TextFormField(
                      controller: passController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          labelText: 'Create Password',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 221, 221)),
                          ),
                          prefixIcon: const Icon(Icons.lock),
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
                          labelStyle: const TextStyle(color: Colors.grey)),
                      //obscureText: true,
                      onChanged: (val) => password = val,
                      validator: passwordValidator,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: TextFormField(
                      controller: passController1,
                      obscureText: passToggle1,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 221, 221)),
                          ),
                          prefixIcon: const Icon(Icons.password_sharp),
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
                          labelStyle: const TextStyle(color: Colors.grey)),
                      validator: (val) =>
                          MatchValidator(errorText: 'password dont match')
                              .validateMatch(val!, password),
                      //obscureText: true,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: 340,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 24, 248, 229)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/S_login");
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
