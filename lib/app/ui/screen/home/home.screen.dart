import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/home/bottom_tab_bar.widget.dart';
import 'package:memoir/app/ui/screen/index/index.screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
