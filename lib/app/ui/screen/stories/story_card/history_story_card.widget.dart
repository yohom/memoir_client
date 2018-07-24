import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/screen/stories/story_card/story_card.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// 历史Story对应的Card
///
class HistoryStoryCard extends StoryCard {
  final Story story;

  HistoryStoryCard({
    Key key,
    @required this.story,
    @required elevation,
  }) : super(key: key, elevation: elevation);

  @override
  Widget buildBackground(BuildContext context) {
    return SizedBox.expand(child: ImageWidget(imageUrl: story.storyImage));
  }

  @override
  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: space_big,
        vertical: space_huge,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _StoryDate(storyDate: story.formatStoryDate),
              _Favorite(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              _StoryTitle(title: story.title),
              _Mood(),
            ],
          ),
        ],
      ),
    );
  }
}

///
/// story日期
///
class _StoryDate extends StatelessWidget {
  const _StoryDate({
    Key key,
    @required this.storyDate,
  }) : super(key: key);

  final List<String> storyDate;

  @override
  Widget build(BuildContext context) {
    final dayTheme = Theme
        .of(context)
        .textTheme
        .headline
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);

    final monthTheme =
        Theme.of(context).textTheme.subhead.copyWith(color: Colors.white);

    final yearTheme =
        Theme.of(context).textTheme.caption.copyWith(color: Colors.white);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(storyDate[0], style: dayTheme),
        SPACE_NORMAL,
        Text(storyDate[1], style: monthTheme),
        Text(storyDate[2], style: yearTheme),
      ],
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

///
/// story标题
///
class _StoryTitle extends StatelessWidget {
  const _StoryTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
    );
  }
}

///
/// 心情
///
class _Mood extends StatelessWidget {
  const _Mood({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('d');
  }
}
