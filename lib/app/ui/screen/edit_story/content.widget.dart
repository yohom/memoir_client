import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/greeting/greeting.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/select_mood/select_mood.widget.dart';
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
        if (ss.hasData) {
          _controller.animateToPage(
            ss.data,
            duration: Duration(milliseconds: 1000),
            curve: Curves.decelerate,
          );
        }
        return PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Greeting(),
            SelectMood(),
          ],
        );
      },
    );
  }
}
