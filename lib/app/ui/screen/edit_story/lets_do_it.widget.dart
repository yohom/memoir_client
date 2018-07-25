import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/show_up.transition.dart';
import 'package:memoir/framework/res.dart';

class LetsDoIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowUpTransition(
      delay: 1800,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: RaisedButton(
          elevation: elevation_big,
          padding: EdgeInsets.symmetric(vertical: space_big),
          onPressed: () {},
          shape: StadiumBorder(),
          child: Text(
            'LETS DO IT!',
            style: Theme.of(context).textTheme.subhead.copyWith(
                color: Colors.pinkAccent, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
