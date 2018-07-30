import 'package:flutter/material.dart';

///
/// story日期
///
class StoryDate extends StatelessWidget {
  const StoryDate({
    Key key,
    @required this.storyDate,
  }) : super(key: key);

  final String storyDate;

  @override
  Widget build(BuildContext context) {
    return Text(storyDate,
        style: Theme.of(context)
            .textTheme
            .headline
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold));
  }
}
