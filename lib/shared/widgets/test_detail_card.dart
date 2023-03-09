import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

class TestDetailCard extends StatelessWidget {
  String cardMessage;
  TestDetailCard({super.key, required this.cardMessage});

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.black,
        elevation: 2,
        color: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: SizedBox(
          height: DeviceDimensions.deviceHeight(context) / 5,
          width: DeviceDimensions.deviceWidth(context) / 3,
          //color: Colors.cyan,
          child: Center(
            child: AutoSizeText(
              "DSA QUIZ",
              maxLines: 1,
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
