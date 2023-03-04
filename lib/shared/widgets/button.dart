import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget UserButton(
    {required String buttonText,
    required Function? fn(),
    required double height,
    required double width,
    required Color buttonColor,
    required double fontSize}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStatePropertyAll(buttonColor)),
        onPressed: fn!,
        child: Text(
          buttonText,
          style: GoogleFonts.nunito(color: Colors.white, fontSize: fontSize),
        )),
  );
}
