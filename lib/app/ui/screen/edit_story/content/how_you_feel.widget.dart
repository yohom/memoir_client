import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/app/res/drawable.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/ui/carousel.widget.dart';

class HowYouFeel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 100.0),
        Question(question: 'How did you fell throughout the day?'),
        Flexible(child: _Feel()),
        StepIndicator(goToPage: 5, returnToPage: 3),
      ],
    );
  }
}

class _Feel extends StatefulWidget {
  @override
  _FeelState createState() {
    return _FeelState();
  }
}

class _FeelState extends State<_Feel> {
  final _controller = PageController(viewportFraction: 0.3);
  final _iconDataList = [
    ReflectlyIcons.happy,
    ReflectlyIcons.blessed,
    ReflectlyIcons.lucky,
    ReflectlyIcons.good,
    ReflectlyIcons.confused,
    ReflectlyIcons.stressed,
    ReflectlyIcons.angry,
    ReflectlyIcons.anxious,
    ReflectlyIcons.down,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Carousel.builder(
      viewportFraction: 0.3,
      itemCount: _iconDataList.length,
      itemBuilder: (_, index) {
        return Icon(_iconDataList[index], size: 80.0, color: Colors.white);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
