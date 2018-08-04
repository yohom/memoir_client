import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/widget/widget.export.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class AnimatedAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return StreamBuilder(
      stream: bloc.scrollPage.stream,
      initialData: 0,
      builder: (_, ss) {
        final isFirstPage = ss.data == 0;
        return AnimatedContainer(
          duration: kPageChangeDuration,
          curve: Curves.ease,
          margin: EdgeInsets.only(
            top: isFirstPage ? space_giant : space_huge,
            left: isFirstPage ? 0.0 : space_huge,
          ),
          alignment: isFirstPage
              ? AlignmentDirectional.topCenter
              : AlignmentDirectional.topStart,
          transform: Matrix4.identity()..scale(isFirstPage ? 1.0 : 0.7),
          child: Avatar(width: 80.0, height: 80.0),
        );
      },
    );
  }
}
