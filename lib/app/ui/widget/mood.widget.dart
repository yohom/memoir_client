import 'package:flutter/material.dart';
import 'package:memoir/app/res/drawable.dart';

///
/// 心情
///
class Mood extends StatelessWidget {
  const Mood({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      ReflectlyIcons.happy,
      color: Colors.white.withOpacity(0.5),
      size: 100.0,
    );
  }
}
