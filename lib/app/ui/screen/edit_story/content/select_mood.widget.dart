import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class SelectMood extends StatelessWidget {
  const SelectMood({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 120.0),
        Question(question: 'How was your day today?'),
        Flexible(child: _RateYourToday()),
        StepIndicator(goToPage: 2, returnToPage: 0),
      ],
    );
  }
}

class _RateYourToday extends StatefulWidget {
  @override
  _RateYourTodayState createState() {
    return _RateYourTodayState();
  }
}

class _RateYourTodayState extends State<_RateYourToday> {
  double _sliderValue = 5.0;
  IconData _iconData = ReflectlyIcons.completelyOk;
  String _moodDesc = kCompletelyOk;

  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _iconData,
          size: 100.0,
          color: Colors.white,
        ),
        SPACE_BIG,
        Slider(
          min: 0.0,
          max: 10.0,
          divisions: 4,
          value: _sliderValue,
          onChanged: _onSliderChange,
          onChangeEnd: _onSliderChangeEnd,
        ),
        SPACE_BIG,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: space_big),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'RATE YOUR DAY',
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(fontFamily: 'Avenir', color: Colors.white),
              ),
              Text(
                _moodDesc,
                style: Theme.of(context).textTheme.body1.copyWith(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onSliderChange(double value) {
    setState(() {
      _sliderValue = value;
      if (value == 0.0) {
        _iconData = ReflectlyIcons.reallyTerrible;
        _moodDesc = krReallyTerrible;
      } else if (value == 2.5) {
        _iconData = ReflectlyIcons.somewhatBad;
        _moodDesc = kSomewhatBad;
      } else if (value == 5.0) {
        _iconData = ReflectlyIcons.completelyOk;
        _moodDesc = kCompletelyOk;
      } else if (value == 7.5) {
        _iconData = ReflectlyIcons.prettyGood;
        _moodDesc = kPrettyGood;
      } else if (value == 10.0) {
        _iconData = ReflectlyIcons.superAwesome;
        _moodDesc = kSuperAwesome;
      }
    });
  }

  void _onSliderChangeEnd(double value) {
    final bloc = BlocProvider.of(context).storyBloc;
    bloc.scrollPage.add(2);
  }
}
