import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/screen/stories/story_date.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_title.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/story_detail.screen.dart';
import 'package:memoir/app/ui/widget/mood.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

///
/// 历史Story对应的Card
///
class HistoryStoryCard extends StatelessWidget {
  final Story story;
  final double elevation;

  const HistoryStoryCard({
    Key key,
    @required this.story,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Router.navigate(context, StoryDetailScreen(story: story));
      },
      child: Card(
        color: Colors.pinkAccent,
        elevation: elevation,
        margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Hero(
              tag: story.title,
              child: SizedBox.expand(
                child: ImageWidget(imageUrl: story.storyImage),
              ),
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 24.0,
                  top: 24.0,
                  child: StoryDate(storyDate: story.storyDate),
                ),
                Positioned(
                  right: 24.0,
                  top: 24.0,
                  child: _Favorite(),
                ),
                Positioned(
                  left: 24.0,
                  bottom: 24.0,
                  child: StoryTitle(title: story.title),
                ),
                Positioned(
                  right: 24.0,
                  bottom: 24.0,
                  child: Mood(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///
/// 是否favorite
///
class _Favorite extends StatelessWidget {
  const _Favorite({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite_border, color: Colors.white),
      onPressed: () {},
    );
  }
}
