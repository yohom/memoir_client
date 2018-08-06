import 'package:flutter/material.dart';

class Devices {
  static bool isIPhoneX(BuildContext context) {
    return MediaQuery.of(context).size.height == 812;
  }
}
