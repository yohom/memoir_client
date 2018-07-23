import 'dart:async';

import 'package:flutter/material.dart';
import 'package:memoir/framework/framework.dart';

///
/// 显示信息
///
Future<SnackBarClosedReason> showMessage(BuildContext context, String content,
    {bool isError = false}) {
  L.d('messge: $content');
  return Scaffold
      .of(context)
      .showSnackBar(SnackBar(
        content: Text(content),
        backgroundColor: isError ? Colors.red : Colors.blueGrey,
      ))
      .closed;
}

///
/// 获取屏幕大小
///
Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
