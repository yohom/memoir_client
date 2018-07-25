import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/background.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/close.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content.widget.dart';

class EditStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Background(),
          Close(),
          Content(),
        ],
      ),
    );
  }
}