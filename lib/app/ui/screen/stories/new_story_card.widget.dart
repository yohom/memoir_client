import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/res/color.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
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
    return GestureDetector(
      onTap: () => Router.navigate(context, EditStoryScreen()),
      child: Card(
        color: Colors.pinkAccent,
        elevation: elevation,
        margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.mode_edit, color: Colors.white, size: 100.0),
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
