import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/home/bottom_tab_bar.widget.dart';
import 'package:memoir/app/ui/screen/stories/stories.screen.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    L.i('${context.toString()}');

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          StoriesScreen(),
          BottomTabBar(),
        ],
      ),
    );
  }
}
