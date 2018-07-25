import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class FadeInSlideUpTransition extends StatefulWidget {
  final Widget child;
  final double originOffset;
  final int delay;
  final int duration;

  FadeInSlideUpTransition({
    Key key,
    this.originOffset = 30.0,
    this.delay = 500,
    this.duration = 700,
    this.child,
  }) : super(key: key);

  @override
  _FadeInSlideTransitionState createState() {
    return _FadeInSlideTransitionState();
  }
}

class _FadeInSlideTransitionState extends State<FadeInSlideUpTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);

    Observable
        .just('')
        .delay(Duration(milliseconds: widget.delay))
        .listen((_) => _controller.forward());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, widget.originOffset),
      child: AnimatedBuilder(
        animation: _animation,
        child: widget.child,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0.0, -_controller.value * widget.originOffset),
            child: Opacity(
              opacity: _controller.value,
              child: child,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
