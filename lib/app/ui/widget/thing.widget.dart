import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';

class Thing extends StatefulWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onPressed;

  final Color color;

  const Thing(
    this.iconData, {
    Key key,
    @required this.title,
    @required this.onPressed,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  _ThingState createState() {
    return _ThingState();
  }
}

class _ThingState extends State<Thing> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            widget.iconData,
            color: widget.color,
            size: 36.0,
          ),
          SPACE_NORMAL,
          Text(widget.title,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.white.withOpacity(0.6))),
        ],
      ),
    );
  }
}
