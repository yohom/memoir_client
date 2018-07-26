import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class NewStoryCard extends BaseStatelessWidget {
  final double elevation;

  NewStoryCard({
    Key key,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
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
                    colors: [Color(0xfff97087), Color(0xfff36aa0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add, color: Colors.white, size: 100.0),
                Text('撰写史料', style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
