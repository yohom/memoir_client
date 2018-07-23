import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/stories/stories.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';

class StoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Avatar(),
          Stories(),
        ],
      ),
    );
  }
}
