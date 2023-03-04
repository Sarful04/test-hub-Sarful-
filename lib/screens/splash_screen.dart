import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'package:test_hub/shared/constants/device_Dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
        () => {Navigator.of(context).pushNamed("/S_login")});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 132, 195, 250),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/loginPageImage.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to TestHub",
                style: GoogleFonts.nunito(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: DeviceDimensions.deviceHeight(context) / 10,
                child: LoadingIndicator(
                    indicatorType: Indicator.ballScaleMultiple,

                    /// Required, The loading type of the widget
                    colors: const [Colors.white],

                    /// Optional, The color collections
                    strokeWidth: 1,

                    /// Optional, The stroke of the line, only applicable to widget which contains line
                    backgroundColor: Colors.transparent,

                    /// Optional, Background of the widget
                    pathBackgroundColor: Colors.black

                    /// Optional, the stroke backgroundColor
                    ),
              )
              // CircularProgressIndicator(
              //   color: Colors.blueAccent,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
