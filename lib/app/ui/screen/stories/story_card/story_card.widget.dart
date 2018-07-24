import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// 抽象了新增story的card和已有数据的story的card
///
abstract class StoryCard extends StatelessWidget {
  final double elevation;

  StoryCard({
    Key key,
    @required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pinkAccent,
      elevation: elevation,
      margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          buildBackground(context),
          buildContent(context),
        ],
      ),
    );
  }

  Widget buildBackground(BuildContext context);

  Widget buildContent(BuildContext context);
}
