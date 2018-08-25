import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/animated_avatar.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/background.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content/content.widget.dart';
import 'package:memoir/app/ui/widget/close.widget.dart';
import 'package:memoir/app/ui/widget/step_indicator.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

const kPageChangeDuration = Duration(milliseconds: 1200);
const kTopMargin = SizedBox(height: 100.0);

class EditStoryScreen extends StatelessWidget {
  const EditStoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Background(),
          Content(),
          SafeArea(child: AnimatedAvatar()),
          Close(onPressed: () => Router.pop(context)),
          StreamBuilder(
            initialData: 0,
            stream: bloc.scrollPage.stream,
            builder: (_, ss) {
              return AnimatedPositioned(
                duration: Duration(milliseconds: 700),
                curve: Curves.ease,
                right: ss.data == 0 || ss.data == 5 ? -64.0 : kSpaceZero,
                bottom: kSpaceNormal,
                child: StepIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}
