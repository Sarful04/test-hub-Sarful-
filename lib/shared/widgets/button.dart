import 'package:flutter/material.dart';

Widget UserButton(String s, Function fn,double h,double w,ColorSwatch c) {
  return Container(
    height: h,
    width: w,
    child: ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(c)),
      onPressed: fn(), child: Text(s)),
  );
}
