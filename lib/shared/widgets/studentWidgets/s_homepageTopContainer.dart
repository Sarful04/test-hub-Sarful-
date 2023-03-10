
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

class StudentHomepageTopContainer extends StatelessWidget {
  const StudentHomepageTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceDimensions.deviceHeight(context) / 6,
      width: DeviceDimensions.deviceWidth(context),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 20, 115, 220),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser!.photoURL!)),
                const Spacer(),
                const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: DeviceDimensions.deviceHeight(context) / 25,
            ),
            AutoSizeText(
              "Hello,  👋",
              maxLines: 1,
              style: GoogleFonts.nunito(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: DeviceDimensions.deviceHeight(context) / 50,
            ),
            const AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You have ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  TextSpan(
                    text: '4',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.yellow),
                  ),
                  TextSpan(
                    text: ' tests to complete!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            const AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You already completed ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  TextSpan(
                    text: '80%',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.yellow),
                  ),
                  TextSpan(
                    text: ' of the tests!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
