import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() {
    return _GreetingState();
  }
}

class _GreetingState extends State<Greeting>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);

    Observable
        .just('')
        .delay(Duration(milliseconds: 500))
        .listen((_) => _controller.forward());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: Text(
        'Hello Hello Hello Hello Hello',
        style: Theme
            .of(context)
            .textTheme
            .headline
            .copyWith(color: Colors.white70),
      ),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0.0, -_controller.value * 30),
          child: Opacity(
            opacity: _controller.value,
            child: child,
          ),
        );
      },
    );
  }
}
