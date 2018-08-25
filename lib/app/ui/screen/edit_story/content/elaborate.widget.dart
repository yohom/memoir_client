import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/bi_opeate.widget.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/app/ui/widget/question.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/ui/shadowed_box.widget.dart';

const kQuestion = 'Would you like to elaborate on what happended?';

class Elaborate extends StatelessWidget {
  const Elaborate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        kTopMargin,
        Question(kQuestion),
        Flexible(
          child: BiOperate(
            onPositivePressed: () {},
            onNegativePressed: () {
              bloc.scrollPage.add(bloc.scrollPage.latest + 1);
            },
          ),
        ),
      ],
    );
  }
}
