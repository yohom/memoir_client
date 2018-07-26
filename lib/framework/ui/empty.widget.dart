import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.0,
      width: 0.0,
    );
  }
}
