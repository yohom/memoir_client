import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/content/elaborate.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/what_made_today.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/screen/edit_story/content/greeting.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/select_mood.widget.dart';
import 'package:memoir/framework/ui.dart';

class Content extends StatelessWidget {
  final _controller = PageController();

  Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return StreamBuilder<int>(
      stream: bloc.scrollPage.stream,
      builder: (_, ss) {
        if (ss.hasData && _controller.hasClients) {
          _controller.animateToPage(
            ss.data,
            duration: kPageChangeDuration,
            curve: Curves.ease,
          );
        }
        return PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Greeting(),
            SelectMood(),
            WhatMadeToday(),
            Elaborate(),
          ],
        );
      },
    );
  }
}
