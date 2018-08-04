import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/stories/back_to_index.widget.dart';
import 'package:memoir/app/ui/screen/stories/stories.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/utils.dart';

class StoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SPACE_NORMAL,
              SafeArea(child: Avatar(width: 80.0, height: 80.0)),
              SPACE_BIG,
              Stories(),
            ],
          ),
          BackToIndex(),
        ],
      ),
    );
  }
}
