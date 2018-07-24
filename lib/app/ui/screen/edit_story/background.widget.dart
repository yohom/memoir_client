import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';

///
/// 背景
///
class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: NEW_STORY_CARD_TO_EDIT_STORY,
      child: Container(
        color: Colors.pinkAccent,
      ),
    );
  }
}
