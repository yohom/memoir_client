import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:rxdart/rxdart.dart';

///
/// 内容
///
class Content extends StatefulWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  _ContentState createState() {
    return _ContentState();
  }
}

class _ContentState extends State<Content> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticOut);

    Observable
        .just('')
        .delay(Duration(milliseconds: 500))
        .listen((_) => controller.forward());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SPACE_GIANT,
        ScaleTransition(
          scale: animation,
          child: Avatar(),
        ),
      ],
    );
  }
}
