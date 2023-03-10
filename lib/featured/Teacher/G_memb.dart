import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupMember extends StatefulWidget {
  const GroupMember({super.key});

  @override
  State<GroupMember> createState() => _GroupMemberState();
}

class _GroupMemberState extends State<GroupMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "This field is Empty ??",
        style: GoogleFonts.nunito(fontSize: 20),
      )),
    );
  }
}
