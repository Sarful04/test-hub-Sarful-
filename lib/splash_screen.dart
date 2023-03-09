import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () async => {
              if (await FirebaseAuth.instance.authStateChanges().isEmpty)
                {context.go("/s_homepage")}
              else
                {context.go("/s_login")}
            });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 132, 195, 250),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/loginPageImage.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to TestHub",
                style: GoogleFonts.nunito(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: DeviceDimensions.deviceHeight(context) / 10,
                child: const LoadingIndicator(
                    indicatorType: Indicator.squareSpin,
                    colors: [Colors.green],
                    strokeWidth: 1,
                    pathBackgroundColor: Colors.orange),
              )
              // const CircularProgressIndicator(
              //   color: Colors.blueAccent,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
