import 'package:flutter/material.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/app/ui/widget/thing.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

const kReallyTerrible = 'Okay - what make today really teririble?';
const kSomewhatBad = 'Sorry about that - what made today somewhat bad?';
const kCompletelyOk = 'Cool - what made today completely okay?';
const kPrettyGood = 'Great - what made today pretty good?';
const kSuperAwesome = 'Amazing - what made today super awesome?';

const kWork = 'Work';
const kFamily = 'Family';
const kRelationship = 'Relationship';
const kEducation = 'Education';
const kFood = 'Food';
const kTravelling = 'Travelling';
const kFriends = 'Friends';
const kExercise = 'Exercise';
const kOther = 'Other';

class WhatMadeToday extends StatelessWidget {
  const WhatMadeToday({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Column(
      children: <Widget>[
        kTopMargin,
        StreamBuilder<double>(
          stream: bloc.howWasYourDay.stream,
          initialData: 5.0,
          builder: (_, ss) {
            String question = kCompletelyOk;
            if (ss.data == 0.0) {
              question = kReallyTerrible;
            } else if (ss.data == 2.5) {
              question = kSomewhatBad;
            } else if (ss.data == 5.0) {
              question = kCompletelyOk;
            } else if (ss.data == 7.5) {
              question = kPrettyGood;
            } else if (ss.data == 10.0) {
              question = kSuperAwesome;
            }
            return Question(question);
          },
        ),
        Flexible(child: _ThingMadeToday()),
        SPACE_GIANT,
      ],
    );
  }
}

class _ThingMadeToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        padding: EdgeInsets.symmetric(
          vertical: kSpaceHuge,
          horizontal: kSpaceBig,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 1.3,
        children: <Widget>[
          Thing(RIcons.work, title: kWork),
          Thing(RIcons.family, title: kFamily),
          Thing(RIcons.relationship, title: kRelationship),
          Thing(RIcons.education, title: kEducation),
          Thing(RIcons.food, title: kFood),
          Thing(RIcons.travelling, title: kTravelling),
          Thing(RIcons.friends, title: kFriends),
          Thing(RIcons.exercise, title: kExercise),
          Thing(RIcons.other, title: kOther, color: Colors.black26),
        ],
      ),
    );
  }
}
