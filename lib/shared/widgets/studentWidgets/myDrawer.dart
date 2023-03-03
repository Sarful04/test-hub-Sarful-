import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/services/authentication.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 132, 195, 250),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AutoSizeText(
                      "Hello,",
                      maxLines: 1,
                      style: GoogleFonts.nunito(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            FirebaseAuth.instance.currentUser!.photoURL!)),
                  ],
                ),
                AutoSizeText(
                  "${FirebaseAuth.instance.currentUser!.displayName!}! 👋",
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('My Tests'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Result'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 132, 195, 250))),
              onPressed: () {
                AuthService().signOut();
              },
              child: const Text("logout")),
        ],
      ),
    );
  }
}
