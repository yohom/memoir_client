import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';

class HowYouFeel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 100.0),
        Question(question: 'How did you fell throughout the day?'),
        Flexible(child: _Feel()),
        StepIndicator(goToPage: 4, returnToPage: 2),
      ],
    );
  }
}

class _Feel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
