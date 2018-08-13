import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';

class Elaborate extends StatelessWidget {
  const Elaborate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 120.0),
        Question(question: 'Would you like to elaborate on what happended?'),
        Flexible(child: YesOrNo()),
        StepIndicator(goToPage: 4, returnToPage: 2),
      ],
    );
  }
}

class YesOrNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FractionallySizedBox(
          widthFactor: 0.6,
          child: RaisedButton(
            elevation: kElevationBig,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            shape: StadiumBorder(),
            color: Colors.white,
            onPressed: () {},
            child: AvenirText(
              'YES!',
              style: theme.textTheme.subhead.copyWith(
                color: theme.primaryColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SPACE_HUGE,
        FlatButton(
          shape: StadiumBorder(),
          onPressed: () {},
          color: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: AvenirText(
            'NO THANKS',
            style: theme.textTheme.subhead.copyWith(
              color: Colors.white30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
