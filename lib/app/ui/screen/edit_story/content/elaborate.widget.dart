import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui/shadowed_box.widget.dart';

const kQuestion = 'Would you like to elaborate on what happended?';
const kYes = 'YES!';
const kNoThanks = 'NO THANKS';

class Elaborate extends StatelessWidget {
  const Elaborate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        kTopMargin,
        Question(kQuestion),
        Flexible(child: YesOrNo()),
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
          widthFactor: 0.65,
          child: ShadowedBox(
            borderRadius: BorderRadius.circular(45.0),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: StadiumBorder(),
              color: Colors.white,
              onPressed: () {},
              child: AvenirText(
                kYes,
                style: theme.textTheme.subhead.copyWith(
                  color: theme.primaryColorDark,
                  fontWeight: FontWeight.bold,
                ),
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
            kNoThanks,
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
