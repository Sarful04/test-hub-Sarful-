import 'package:flutter/material.dart';
import 'package:test_hub/featured/Teacher/G_memb.dart';
import 'package:test_hub/featured/Teacher/creation.dart';
import 'package:test_hub/featured/Teacher/set_paper.dart';

class Groups_Option extends StatefulWidget {
  Groups_Option();

  @override
  State<Groups_Option> createState() => _Groups_OptionState();
}

class _Groups_OptionState extends State<Groups_Option> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 132, 195, 250),
          title: Text(
            args,
            style: TextStyle(color: Colors.white70, fontSize: 25),
          ),

          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Test',
              ),
              Tab(
                text: 'Group Members',
              )
            ],
          ),
        ),
        body: TabBarView(children: [T_Creation(), GroupMember()]),
      ),
    );
  }
}
