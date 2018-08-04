import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/res/color.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/utils.dart';

class NewStoryCard extends StatelessWidget {
  final double elevation;

  NewStoryCard({
    Key key,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    return GestureDetector(
      onTap: () => Router.navigate(context, EditStoryScreen()),
      child: Card(
        elevation: elevation,
        margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: NEW_STORY_CARD_TO_EDIT_STORY,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [kGradientStartColor, kGradientEndColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Images.newEntryBg,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  ReflectlyIcons.addNewStory,
                  color: Colors.white,
                  size: 100.0,
                ),
                SPACE_BIG,
                Text('ADD NEW STORY', style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
