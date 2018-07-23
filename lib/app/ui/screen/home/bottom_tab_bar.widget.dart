import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        margin: EdgeInsets.all(space_normal),
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
    );
  }
}
