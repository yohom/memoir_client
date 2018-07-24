import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// Story对应的Card
///
class StoryCard extends StatelessWidget {
  final Story story;
  final double elevation;

  StoryCard({
    Key key,
    @required this.story,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pinkAccent,
      elevation: elevation,
      margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox.expand(child: ImageWidget(imageUrl: story.storyImage)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add, color: Colors.white, size: 100.0),
              Text('撰写史料', style: TextStyle(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}

class NewStoryCard extends StatelessWidget {
  final double elevation;

  NewStoryCard({
    @required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pinkAccent,
      elevation: elevation,
      margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(color: Colors.pinkAccent),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add, color: Colors.white, size: 100.0),
              Text('撰写史料', style: TextStyle(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
