import 'package:flutter/material.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/widget/calendar.widget.dart';
import 'package:memoir/app/utils/devices.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui/dot_indicator.widget.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomTabBarState createState() {
    return _BottomTabBarState();
  }
}

class _BottomTabBarState extends State<BottomTabBar>
    with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(kSpaceSmall),
      elevation: kElevationNormal,
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
        child: TabBar(
          controller: _controller,
          indicator: DotTabIndicator(),
          tabs: [
            IconButton(
              padding: EdgeInsets.all(kSpaceBig),
              icon: Icon(ReflectlyIcons.write, color: Colors.black),
              onPressed: () => _controller.animateTo(0),
            ),
            IconButton(
              padding: EdgeInsets.all(kSpaceBig),
              icon: Icon(ReflectlyIcons.listen, color: Colors.black),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Calendar();
                  },
                );
                _controller.animateTo(1);
              },
            ),
            IconButton(
              padding: EdgeInsets.all(kSpaceBig),
              icon: Icon(ReflectlyIcons.mine, color: Colors.black),
              onPressed: () => _controller.animateTo(2),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
