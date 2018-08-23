import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/index/back_to_intro.widget.dart';
import 'package:memoir/app/ui/screen/index/stories/stories.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SPACE_NORMAL,
              SafeArea(child: Avatar(width: 48.0, height: 48.0)),
              SPACE_HUGE,
              Stories(bloc: BlocProvider.of(context)),
            ],
          ),
          BackToIndex(),
        ],
      ),
    );
  }
}
