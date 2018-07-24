import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/story_bloc.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/app/ui/screen/stories/back_to_index.widget.dart';
import 'package:memoir/app/ui/screen/stories/stories.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class StoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SPACE_NORMAL,
              Avatar(),
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
