import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/greeting.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:rxdart/rxdart.dart';

///
/// 内容
///
class Content extends StatelessWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SPACE_GIANT,
        Avatar(),
        SPACE_HUGE,
        SPACE_HUGE,
        Greeting(),
      ],
    );
  }
}
