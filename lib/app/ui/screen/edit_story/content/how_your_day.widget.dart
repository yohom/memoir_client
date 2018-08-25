import 'package:flutter/material.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

const kQuestion = 'How was your day today?';
const kRateYourDay = 'RATE YOUR DAY';

class SelectMood extends StatelessWidget {
  const SelectMood({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        kTopMargin,
        Question(kQuestion),
        Flexible(child: _RateYourToday()),
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
  IconData _iconData = RIcons.completelyOk;
  String _moodDesc = kCompletelyOk;

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.symmetric(horizontal: kSpaceBig),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AvenirText(
                kRateYourDay,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: Colors.white),
              ),
              AvenirText(
                _moodDesc,
                style: Theme.of(context).textTheme.body1.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
        SPACE_GIANT,
      ],
    );
  }

  void _onSliderChange(double value) {
    setState(() {
      _sliderValue = value;
      if (value == 0.0) {
        _iconData = RIcons.reallyTerrible;
        _moodDesc = krReallyTerrible;
      } else if (value == 2.5) {
        _iconData = RIcons.somewhatBad;
        _moodDesc = kSomewhatBad;
      } else if (value == 5.0) {
        _iconData = RIcons.completelyOk;
        _moodDesc = kCompletelyOk;
      } else if (value == 7.5) {
        _iconData = RIcons.prettyGood;
        _moodDesc = kPrettyGood;
      } else if (value == 10.0) {
        _iconData = RIcons.superAwesome;
        _moodDesc = kSuperAwesome;
      }
    });
  }

  void _onSliderChangeEnd(double value) {
    final bloc = BlocProvider.of(context).storyBloc;
    bloc.howWasYourDay.add(value);
    bloc.scrollPage.add(2);
  }
}
