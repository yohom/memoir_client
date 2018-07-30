import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/framework/ui.dart';

@deprecated
class SelectDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        FadeSlideTransition(
          delay: Duration(milliseconds: 600),
          builder: (context, controller) {
            return Align(
              alignment: AlignmentDirectional.topCenter,
              heightFactor: 2.0,
              child: Text(
                'Story Date',
                style: Theme.of(context).textTheme.display2.copyWith(
                      color: Colors.blue.withOpacity(0.3),
                      letterSpacing: 5.0,
                    ),
              ),
            );
          },
        ),
        FadeSlideTransition(
          delay: Duration(milliseconds: 700),
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'July 13',
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white),
                ),
                Text(
                  'YESTERDAY',
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white70),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
