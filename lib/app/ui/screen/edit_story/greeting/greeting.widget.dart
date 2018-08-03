import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/app/ui/screen/edit_story/greeting/lets_do_it.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/greeting/select_date.widget.dart';

///
/// 内容
///
class Greeting extends StatelessWidget {
  const Greeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(width: 80.0, height: 80.0),
        FractionallySizedBox(
          widthFactor: 0.9,
          child: FadeSlideTransition(
            delay: Duration(milliseconds: 300),
            builder: (context, controller) {
              return Text(
                'Good morning yohom, ready to create a new story?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.white70,
                      fontFamily: 'Quicksand',
                    ),
              );
            },
          ),
        ),
        SelectDate(),
        LetsDoIt(),
      ],
    );
  }
}
