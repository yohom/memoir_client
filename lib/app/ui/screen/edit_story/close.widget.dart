import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';

///
/// 关闭按钮
///
class Close extends StatelessWidget {
  const Close({
    Key key,
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
            color: Colors.white30,
            size: 36.0,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
