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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff97087), Color(0xfff36aa0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
