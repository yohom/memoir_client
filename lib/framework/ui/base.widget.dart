import 'package:flutter/material.dart';
import 'package:memoir/framework/utils/log.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  final bool screenOnly;

  const BaseStatelessWidget({
    Key key,
    this.screenOnly = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (screenOnly && context.toString().contains('Screen'))
      L.i(context.toString());
    return delegateBuild(context);
  }

  Widget delegateBuild(BuildContext context);
}

abstract class BaseStatefulWidget extends StatefulWidget {
  final bool screenOnly;

  const BaseStatefulWidget({
    Key key,
    this.screenOnly = true,
  }) : super(key: key);
}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    if (widget.screenOnly && context.toString().contains('Screen'))
      L.i(context.toString());
    return delegateBuild(context);
  }

  Widget delegateBuild(BuildContext context);
}
