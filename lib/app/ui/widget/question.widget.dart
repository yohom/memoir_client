import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/framework/res.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({Key key, @required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: space_big),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: QuicksandText(
          question,
          style: Theme.of(context)
              .textTheme
              .headline
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
