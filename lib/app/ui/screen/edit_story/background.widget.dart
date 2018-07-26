import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/framework/ui.dart';

///
/// 背景
///
@deprecated
class Background extends BaseStatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    return Hero(
      tag: NEW_STORY_CARD_TO_EDIT_STORY,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff78190), Color(0xfff36aa0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
