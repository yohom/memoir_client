import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';

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
                style: Theme.of(context).textTheme.display3.copyWith(
                      color: Color(0XFF7775C5),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
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
                  style: Theme.of(context).textTheme.headline.copyWith(
                        color: Colors.white.withOpacity(0.6),
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold,
                      ),
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
