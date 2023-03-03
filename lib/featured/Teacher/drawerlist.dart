import 'package:flutter/material.dart';

Widget DrawerList(IconData icon, String s, Function fn) {
  return ListTile(
    onTap: fn(),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [Icon(icon,color: Colors.purple,), Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(s),
      )],
    ),
  );
}
