import 'package:flutter/material.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/app/ui/widget/thing.widget.dart';
import 'package:memoir/framework/utils.dart';

class WhatMadeToday extends StatelessWidget {
  const WhatMadeToday({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 120.0),
        Question(question: 'Sorry about that - what made today somewhat bad?'),
        Flexible(child: ThingMadeToday()),
        StepIndicator(goToPage: 3, returnToPage: 1),
      ],
    );
  }
}

class ThingMadeToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 1.3,
        children: <Widget>[
          Thing(
            ReflectlyIcons.work,
            title: 'Work',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.family,
            title: 'Family',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.relationship,
            title: 'Relationship',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.education,
            title: 'Education',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.food,
            title: 'Food',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.travelling,
            title: 'Travelling',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.friends,
            title: 'Friends',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.exercise,
            title: 'Exercise',
            onPressed: () {},
          ),
          Thing(
            ReflectlyIcons.other,
            title: 'other',
            color: Colors.black26,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
