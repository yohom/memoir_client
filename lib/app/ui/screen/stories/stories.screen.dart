import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/framework.dart';

class StoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Avatar(),
          Stories(),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  final _controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 64.0),
        child: SafeArea(
          child: PageView.builder(
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Index();
              }
              return Story();
            },
          ),
        ),
      ),
    );
  }
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
    );
  }
}
