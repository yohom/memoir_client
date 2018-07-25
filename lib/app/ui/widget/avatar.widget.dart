import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/show_up.transition.dart';
import 'package:memoir/framework/res.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ShowUpTransition(
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
}
