import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// Page的第一页
///
class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Your Stories',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(width: 100.0, child: Divider(height: space_huge)),
        SPACE_NORMAL,
        Text('FILTER STORIES'),
        SPACE_BIG,
        Text('# Favorites'),
      ],
    );
  }
}
