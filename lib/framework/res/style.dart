import 'package:flutter/material.dart';
import 'package:memoir/framework/res/dimens.dart';

ThemeData getTextFieldTheme() {
  return ThemeData(
    hintColor: Colors.grey,
  );
}

ThemeData getTabBarTheme() {
  return ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Colors.black,
  );
}

InputDecoration getInputDecoration() {
  return InputDecoration(
    labelStyle: TextStyle(color: Colors.black),
    contentPadding: EdgeInsets.only(
      left: kSpaceNormal,
      top: kSpaceBig,
      bottom: kSpaceBig,
    ),
    filled: true,
    fillColor: Colors.white,
    border: InputBorder.none,
  );
}

RoundedRectangleBorder getRoundedCornerBorder(
  BuildContext context, {
  double radius = 30.0,
  Color borderColor = Colors.transparent,
}) {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(radius),
    side: BorderSide(
      color: borderColor,
      width: onePixel(context),
    ),
  );
}
