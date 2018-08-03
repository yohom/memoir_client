import 'package:flutter/material.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kBottomBarHeight,
        child: Card(
          margin: EdgeInsets.all(space_small),
          elevation: elevation_normal,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              IconButton(
                icon: Icon(
                  IconData(0xe97d, fontFamily: 'ReflectlyIcons'),
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  IconData(0xe945, fontFamily: 'ReflectlyIcons'),
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  IconData(0xe9a0, fontFamily: 'ReflectlyIcons'),
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
