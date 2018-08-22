import 'package:flutter/material.dart';

///
/// story标题
///
class StoryTitle extends StatelessWidget {
  const StoryTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
    );
  }
}
