import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/home/bottom_tab_bar.widget.dart';
import 'package:memoir/app/ui/screen/stories/stories.screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            StoriesScreen(),
            BottomTabBar(),
          ],
        ),
      ),
    );
  }
}
