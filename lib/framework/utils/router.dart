import 'dart:async';

import 'package:flutter/material.dart';
import 'package:memoir/framework/ui/loading.widget.dart';

class Router {
  ///
  /// 导航
  ///
  static Future<T> navigate<T>(BuildContext context, Widget widget,
      {String name}) {
    return Navigator.of(context).push<T>(
          MaterialPageRoute(
            builder: (context) => widget,
            settings: RouteSettings(name: name ??= widget.toString()),
          ),
        );
  }

  ///
  /// 不保留源页面的跳转
  ///
  static void navigateReplace(BuildContext context, Widget widget) {
    Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => widget),
        );
  }

  ///
  /// 退出当前页
  ///
  static void pop<T>(BuildContext context, [T data]) {
    Navigator.of(context).pop<T>(data);
  }

  static void pushAndClearAll(BuildContext context, Widget widget) {
    Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => widget),
          (route) => false,
        );
  }

  ///
  /// 等待页
  ///
  static Future<T> loading<T>(BuildContext context, Future<T> futureTask) {
    showDialog(
      context: context,
      builder: (context) => LoadingWidget(),
      barrierDismissible: false,
    );
    return futureTask.whenComplete(() {
      pop(context);
    });
  }
}
