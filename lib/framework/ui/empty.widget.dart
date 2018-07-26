import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class EmptyWidget extends BaseStatelessWidget {
  const EmptyWidget({Key key}) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    return SizedBox(
      height: 0.0,
      width: 0.0,
    );
  }
}
