import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(),
    );
  }
}
