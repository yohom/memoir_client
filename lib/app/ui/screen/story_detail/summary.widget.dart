import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/widget/mood.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_date.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_title.widget.dart';
import 'package:memoir/framework/res.dart';

///
/// 概要
///
class Summary extends StatelessWidget {
  final Story story;

  const Summary({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kSpaceBig),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              StoryDate(storyDate: story.storyDate),
              StoryTitle(title: story.title),
            ],
          ),
          Mood(),
        ],
      ),
    );
  }
}
