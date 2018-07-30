import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/screen/stories/mood.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_date.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_title.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class StoryDetailScreen extends StatefulWidget {
  final Story story;

  const StoryDetailScreen({Key key, this.story}) : super(key: key);

  @override
  _StoryDetailScreenState createState() {
    return _StoryDetailScreenState();
  }
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  final _controller = ScrollController();

  double _parallaxOffset = 0.0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _parallaxOffset = -_controller.offset * 0.2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.story.title,
            child: Transform.translate(
              offset: Offset(0.0, _parallaxOffset),
              child: SizedBox.expand(
                child: ImageWidget(imageUrl: widget.story.storyImage),
              ),
            ),
          ),
          ListView(
            controller: _controller,
            children: <Widget>[
              SizedBox(height: getScreenSize(context).height * 0.7),
              _Summary(story: widget.story),
              _Content(story: widget.story)
            ],
          ),
          Positioned(child: Operate()),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final Story story;

  const _Content({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation_normal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      margin: EdgeInsets.all(space_zero),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: space_normal,
          vertical: space_huge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(height: 32.0),
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
          ],
        ),
      ),
    );
  }
}

class _Summary extends StatelessWidget {
  final Story story;

  const _Summary({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(space_big),
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

///
/// 操作们
///
class Operate extends StatelessWidget {
  const Operate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(space_normal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Card(
              elevation: elevation_normal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(space_normal),
                child: Icon(Icons.arrow_downward),
              ),
            ),
            Card(
              elevation: elevation_normal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(space_normal),
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
