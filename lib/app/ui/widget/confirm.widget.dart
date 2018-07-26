import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_in_slide_up.transition.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class Confirm extends BaseStatelessWidget {
  @override
  Widget delegateBuild(BuildContext context) {
    return FadeSlideTransition(
      duration: Duration(milliseconds: 500),
      slideCurve: Curves.elasticOut,
      slideReverseCurve: Curves.decelerate,
      originOffset: Offset(0.0, 100.0),
      builder: (context, controller) {
        return FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: 0.4,
          child: Card(
            elevation: elevation_giant,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: <Widget>[
                Text('title'),
                Text('content'),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        controller.reverse().then((_) => Router.pop(context));
                      },
                      child: Icon(Icons.close),
                    ),
                    FlatButton(onPressed: () {}, child: Icon(Icons.check)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
