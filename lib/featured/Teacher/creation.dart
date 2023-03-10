import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:test_hub/shared/constants/device_Dimensions.dart';

// ignore: camel_case_types
class T_Creation extends StatefulWidget {
  const T_Creation({super.key});

  @override
  State<T_Creation> createState() => _T_CreationState();
}

// ignore: camel_case_types
class _T_CreationState extends State<T_Creation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceDimensions.deviceHeight(context),
      width: DeviceDimensions.deviceWidth(context),
      child: Scaffold(
          floatingActionButton: SpeedDial(
            backgroundColor: Color.fromRGBO(237, 7, 130, 1),
            animatedIcon: AnimatedIcons.add_event,
            spaceBetweenChildren: 12,
            children: [
              SpeedDialChild(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color.fromARGB(255, 58, 149, 240),
                label: 'CREATE NEW',
                labelBackgroundColor: Colors.grey.shade800,
                labelStyle: TextStyle(color: Colors.white),
              ),
              SpeedDialChild(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                backgroundColor: Color.fromARGB(255, 58, 149, 240),
                label: 'ONGOING TESTS',
                labelBackgroundColor: Colors.grey.shade800,
                labelStyle: TextStyle(color: Colors.white),
              )
            ],
          ),
          body: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/box-removebg-preview.png',
                    height: DeviceDimensions.deviceHeight(context) / 6,
                    width: DeviceDimensions.deviceWidth(context) / 6,
                  ),
                  const Text(
                    'You have no creations yet.You can nevertheless.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 113, 113),
                        fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: DeviceDimensions.deviceHeight(context),
                                width: DeviceDimensions.deviceWidth(context),
                                child: AlertDialog(
                                  title: Column(
                                    children: [
                                      Container(
                                        height: DeviceDimensions.deviceHeight(
                                                context) /
                                            12,
                                        width: DeviceDimensions.deviceWidth(
                                            context),
                                        decoration: const BoxDecoration(
                                            color: Colors.blue),
                                        child: Column(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Icon(
                                                Icons.key,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8),
                                              child: Text(
                                                'Create new exam room',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 4, bottom: 4),
                                        child: Text(
                                          'set your shareable paper code for students to access the paper',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              labelText: 'PaperTitle',
                                              hintText: 'eg 1,2,3',
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red)),
                                              prefixIcon: Icon(
                                                Icons.padding,
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              labelText: 'PaperCode',
                                              hintText: 'eg 1,2,3',
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red)),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 140),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Procced',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text(
                        'Create one.',
                        style: TextStyle(fontSize: 12),
                      )),
                ],
              ),
            ],
          ))),
    );
  }
}
