import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget UserButton(
    String s, Function fn, double h, double w, Color c, double font) {
  return Container(
    height: h,
    width: w,
    child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(c)),
        onPressed: fn(),
        child: Text(
          s,
          style: GoogleFonts.nunito(color: Colors.white, fontSize: font),
        )),
  );
}
