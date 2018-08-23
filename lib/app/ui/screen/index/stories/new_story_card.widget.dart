import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/res/color.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui/shadow_box.widget.dart';
import 'package:memoir/framework/utils.dart';

const kCardRadius = 12.0;

class NewStoryCard extends StatelessWidget {
  final double elevation;

  const NewStoryCard({
    Key key,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Router.navigate(context, EditStoryScreen()),
      child: ShadowBox(
        borderRadius: BorderRadius.circular(kCardRadius),
        spreadRadius: -16.0,
        blurRadius: 24.0,
        shadowColor: Theme.of(context).primaryColor,
        shadowOffset: Offset(0.0, 24.0),
        margin: EdgeInsets.only(bottom: kStoriesBottomPadding),
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: <Widget>[
            _Background(),
            Images.newEntryBg,
            _Action(),
          ],
        ),
      ),
    );
  }
}

/// 背景
class _Background extends StatelessWidget {
  const _Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: NEW_STORY_CARD_TO_EDIT_STORY,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kCardRadius),
          gradient: LinearGradient(
            colors: [kGradientStartColor, kGradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

/// 新增story的图标和文字
class _Action extends StatelessWidget {
  const _Action({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ReflectlyIcons.addNewStory,
          color: Colors.white,
          size: 100.0,
        ),
        SPACE_BIG,
        AvenirText(
          'ADD NEW STORY',
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
