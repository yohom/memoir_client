import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_in_slide_up.transition.dart';
import 'package:memoir/app/ui/screen/edit_story/lets_do_it.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/select_date.widget.dart';
import 'package:memoir/app/ui/widget/avatar.widget.dart';
import 'package:memoir/framework/ui.dart';

///
/// 内容
///
@deprecated
class Content extends BaseStatelessWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Avatar(),
        FadeSlideTransition(
          delay: Duration(milliseconds: 300),
          builder: (context, controller) {
            return Text(
              'Hello Hello Hello Hello Hello',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline
                  .copyWith(color: Colors.white70),
            );
          },
        ),
        SelectDate(),
        LetsDoIt(),
      ],
    );
  }
}
