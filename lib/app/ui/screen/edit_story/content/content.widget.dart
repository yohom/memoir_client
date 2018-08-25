import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/content/elaborate.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/finishing.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/story_date/story_date.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/how_you_feel.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/how_your_day.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/what_made_today.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils/global.dart';

class Content extends StatelessWidget {
  final _controller = PageController();

  Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    bloc.scrollPage.listen((page) {
      if (_controller.hasClients) {
        _controller.animateToPage(
          page,
          duration: kPageChangeDuration,
          curve: Curves.ease,
        );
      }
    });
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        StoryDate(),
        SelectMood(),
        WhatMadeToday(),
        Elaborate(),
        HowYouFeel(),
        ListView(
          children: <Widget>[
            SizedBox(
              height: Global.kScreenHeight,
              child: Finishing(),
            )
          ],
        ),
      ],
    );
  }
}
