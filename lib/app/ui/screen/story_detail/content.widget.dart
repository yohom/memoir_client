import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/res.dart';

///
/// 内容
///
class Content extends StatelessWidget {
  final Story story;

  const Content({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation_normal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      margin: EdgeInsets.all(space_zero),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: space_normal,
          vertical: space_huge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(height: 32.0),
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
            SPACE_HUGE,
            Text('今天发生了什么?', style: Theme.of(context).textTheme.headline),
            Text('balabalababa', style: Theme.of(context).textTheme.subhead),
          ],
        ),
      ),
    );
  }
}
