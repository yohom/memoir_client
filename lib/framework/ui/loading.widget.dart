import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class LoadingWidget extends BaseStatelessWidget {
  @override
  Widget delegateBuild(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(),
    );
  }
}
