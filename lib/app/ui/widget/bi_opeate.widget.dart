import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui/shadowed_box.widget.dart';

const kYes = 'YES!';
const kNoThanks = 'NO THANKS';

class BiOperate extends StatelessWidget {
  final VoidCallback onPositivePressed;
  final VoidCallback onNegativePressed;
  final String positiveLabel;
  final String negativeLabel;

  const BiOperate({
    Key key,
    @required this.onPositivePressed,
    @required this.onNegativePressed,
    this.positiveLabel = kYes,
    this.negativeLabel = kNoThanks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FractionallySizedBox(
          widthFactor: 0.75,
          child: ShadowedBox(
            borderRadius: BorderRadius.circular(45.0),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: StadiumBorder(),
              color: Colors.white,
              onPressed: onPositivePressed,
              child: AvenirText(
                positiveLabel,
                style: theme.textTheme.subhead.copyWith(
                  color: theme.primaryColorDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SPACE_BIG,
        FlatButton(
          shape: StadiumBorder(),
          onPressed: onNegativePressed,
          color: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: AvenirText(
            negativeLabel,
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
