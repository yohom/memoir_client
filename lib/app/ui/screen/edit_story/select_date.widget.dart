import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/transition.dart';

class SelectDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        FadeInSlideUpTransition(
          delay: 600,
          child: Align(
            alignment: AlignmentDirectional.topCenter,
            heightFactor: 2.0,
            child: Text(
              'Story Date',
              style: Theme
                  .of(context)
                  .textTheme
                  .display2
                  .copyWith(color: Colors.blue, letterSpacing: 5.0),
            ),
          ),
        ),
        FadeInSlideUpTransition(
          delay: 700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'July 13',
                style: Theme
                    .of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.white),
              ),
              Text(
                'YESTERDAY',
                style: Theme
                    .of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.white70),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
