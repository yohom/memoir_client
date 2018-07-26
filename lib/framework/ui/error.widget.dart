import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class ErrorWidget extends BaseStatelessWidget {
  final String message;

  const ErrorWidget({
    Key key,
    this.message,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    return Center(
      child: Text(message ?? '没有数据', style: TextStyle(color: Colors.red)),
    );
  }
}
