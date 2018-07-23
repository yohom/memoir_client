import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';

///
/// Page的第一页
///
class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        print(notification.toString());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '自传',
            style: Theme.of(context).textTheme.display3,
          ),
          SizedBox(width: 100.0, child: Divider(height: space_huge)),
          Text('标签'),
          Text('# 最爱'),
        ],
      ),
    );
  }
}
