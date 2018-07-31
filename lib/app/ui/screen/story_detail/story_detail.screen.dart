import 'dart:io';

import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/story_bloc.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/app/ui/screen/stories/mood.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_date.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_title.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/content.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/operate_group/operate_gourp.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/summary.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class StoryDetailScreen extends StatefulWidget {
  final Story story;

  const StoryDetailScreen({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  _StoryDetailScreenState createState() {
    return _StoryDetailScreenState();
  }
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  final _controller = ScrollController();

  StoryBloc bloc;
  double _parallaxOffset = 0.0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() => _parallaxOffset = -_controller.offset * 0.2);
    });
  }

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of(context).storyBloc;
    return WillPopScope(
      // 禁掉ios的滑动退出
      onWillPop: () async => !Platform.isIOS,
      child: Scaffold(
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
                Summary(story: widget.story),
                Content(story: widget.story),
              ],
            ),
            OperateGroup(story: widget.story),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    bloc.showMoreOperate.clear();
    super.dispose();
  }
}
