import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

class TestDetailCard extends StatelessWidget {
  const TestDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Container(
              height: DeviceDimensions.deviceHeight(context) / 4,
              width: DeviceDimensions.deviceWidth(context) / 2,
              color: Colors.cyan,
              child: const Center(child: AutoSizeText("TEST 1")),
            )));
  }
}
