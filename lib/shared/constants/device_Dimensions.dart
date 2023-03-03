import 'package:flutter/material.dart';

class DeviceDimensions {
  static deviceWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static deviceHeight(context) {
    return MediaQuery.of(context).size.height;
  }
}
