import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_hub/featured/Teacher/add_group.dart';

import 'drawerlist.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  TextEditingController nameController = TextEditingController();
  List<Add_Group> add_group = List.empty(growable: true);
  int selectedIndex = -1;
  bool isAddgroup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(child: Stack()),
      //     ],
      //   ),
      // ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/tec.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    left: 20,
                    top: 0,
                    child: Container(
                        height: 50, child: Image.asset('assets/acc.jpg')),
                  ),
                ],
              )),
          DrawerList(Icons.assignment_add, 'Create new Test', () {}),
          DrawerList(Icons.arrow_drop_down_sharp, 'Tests Live', () {}),
          DrawerList(
              Icons.supervisor_account_outlined, 'developer contacts', () {}),
          DrawerList(Icons.sms_outlined, 'Send Feedback', () {}),
          DrawerList(Icons.privacy_tip_outlined, 'Privacy Policy', () {}),
          DrawerList(Icons.share_outlined, 'Share App ', () {}),
          DrawerList(Icons.logout, 'Logout', () {}),
          DrawerList(Icons.delete_outlined, 'Delete Account', () {})
        ]),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.menu,
        //         color: Colors.grey,
        //         size: 30, // Changing Drawer Icon Size
        //       ),
        //       onPressed: () {
        //         // Scaffold.of(context).openDrawer();
        //         Navigator.of(context, rootNavigator: true).pushNamed("/T_home");
        //       },
        //       //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 132, 195, 250),
        elevation: 0.0,
        //leading: Image.asset('assets/loginPageImage.png'),
        title: Text("Groups ",
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 25,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Create Group",
                  hintStyle: GoogleFonts.nunito(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 132, 195, 250)),
                    onPressed: () {
                      String name = nameController.text.trim();
                      if (name.isNotEmpty) {
                        setState(() {
                          nameController.text = "";
                          add_group.add(Add_Group(
                            name: name,
                          ));
                        });
                      }
                    },
                    child: Text(
                      "Add groups",
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                      ),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 132, 195, 250)),
                    onPressed: () {
                      String name = nameController.text.trim();
                      if (name.isNotEmpty) {
                        setState(() {
                          nameController.text = "";
                          add_group[selectedIndex].name = name;
                          selectedIndex = -1;
                          // add_group.add(Add_Group(
                          //   name: name,
                          // ));
                        });
                      }
                    },
                    child: Text(
                      "Update Group",
                      style: GoogleFonts.nunito(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            add_group.isEmpty
                ? Text("No Groups yet.......",
                    style: GoogleFonts.nunito(
                      fontSize: 22,
                    ))
                : Expanded(
                    child: ListView.builder(
                      itemCount: add_group.length,
                      itemBuilder: (add_group, index) => getRow(index),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              add_group[index].name,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context)
              .pushNamed("/groups_option", arguments: add_group[index].name);
        },
        trailing: SizedBox(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    nameController.text = add_group[index].name;
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Icon(Icons.edit)),
              Spacer(),
              InkWell(
                  onTap: () {
                    setState(() {
                      add_group.removeAt(index);
                    });
                  },
                  child: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
