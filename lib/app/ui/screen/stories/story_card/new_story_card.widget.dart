import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/stories/story_card/story_card.widget.dart';

class NewStoryCard extends StoryCard {
  NewStoryCard({
    Key key,
    @required elevation,
  }) : super(key: key, elevation: elevation);

  @override
  Widget buildBackground(BuildContext context) {
    return Container(color: Colors.pinkAccent);
  }

  @override
  Widget buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.add, color: Colors.white, size: 100.0),
        Text('撰写史料', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
