import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/ui/widget/story_date.widget.dart';
import 'package:memoir/app/ui/widget/story_title.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/story_detail.screen.dart';
import 'package:memoir/app/ui/widget/mood.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/ui/shadow_box.widget.dart';
import 'package:memoir/framework/utils.dart';

const kCardRadius = 12.0;

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
      child: ShadowBox(
        borderRadius: BorderRadius.circular(kCardRadius),
        spreadRadius: -16.0,
        blurRadius: 24.0,
        shadowOffset: Offset(0.0, 24.0),
        margin: EdgeInsets.only(bottom: kStoriesBottomPadding),
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Hero(
              tag: story.title,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(kCardRadius),
                  child: ImageWidget(imageUrl: story.storyImage)),
            ),
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
              right: -16.0,
              bottom: 24.0,
              child: Mood(),
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
