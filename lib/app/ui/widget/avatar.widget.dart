import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';
import 'package:rxdart/rxdart.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() {
    return _AvatarState();
  }
}

class _AvatarState extends State<Avatar> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);

    Observable
        .just('')
        .delay(Duration(milliseconds: 500))
        .listen((_) => _controller.forward());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ScaleTransition(
        scale: _animation,
        child: SizedBox(
          width: 80.0,
          height: 80.0,
          child: Material(
            elevation: elevation_big,
            borderRadius: BorderRadius.circular(90.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/rabbit.png'),
            ),
          ),
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
