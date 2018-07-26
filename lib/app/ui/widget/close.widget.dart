import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// 关闭按钮
///
class Close extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;

  const Close({
    Key key,
    this.color = Colors.white30,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: IconButton(
          padding: EdgeInsets.only(right: space_huge, top: space_big),
          icon: Icon(
            Icons.close,
            color: color,
            size: 36.0,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
