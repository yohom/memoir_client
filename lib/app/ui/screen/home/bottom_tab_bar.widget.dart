import 'package:flutter/material.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/utils/devices.dart';
import 'package:memoir/framework/res.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Card(
        margin: EdgeInsets.all(space_small),
        elevation: elevation_normal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8.0),
            bottom: Radius.circular(
              Devices.isIPhoneX(context) ? 40.0 : 8.0,
            ),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: space_small),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                IconButton(
                  icon: Icon(ReflectlyIcons.write, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(ReflectlyIcons.listen, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(ReflectlyIcons.mine, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
