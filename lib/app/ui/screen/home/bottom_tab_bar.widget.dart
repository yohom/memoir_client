import 'package:flutter/material.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class BottomTabBar extends BaseStatelessWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: bottom_bar_height,
        child: Card(
          margin: EdgeInsets.all(space_normal),
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            tabs: [
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
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
