import 'package:flutter/material.dart';

class RigisterPage extends StatelessWidget {
  const RigisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 27, 226, 223),
              Color.fromARGB(255, 17, 239, 220),
              Color.fromARGB(255, 6, 112, 161)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 120, bottom: 30, left: 20),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                      color: Color.fromARGB(255, 21, 43, 207), fontSize: 44),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 4),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 4, top: 10),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Mobile Number'),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 4, top: 10),
                child: TextField(
                  decoration: InputDecoration(labelText: 'User Name'),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 4, top: 10),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
