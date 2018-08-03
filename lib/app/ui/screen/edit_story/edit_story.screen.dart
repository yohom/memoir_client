import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/animated_avatar.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/background.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content.widget.dart';
import 'package:memoir/app/ui/widget/widget.export.dart';
import 'package:memoir/framework/utils.dart';

class EditStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Background(),
          Content(),
          SafeArea(child: AnimatedAvatar()),
          Close(onPressed: () => Router.pop(context)),
        ],
      ),
    );
  }
}
