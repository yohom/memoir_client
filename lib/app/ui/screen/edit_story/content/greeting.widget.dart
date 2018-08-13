import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/app/ui/animation/show_up.transition.dart';
import 'package:memoir/app/ui/widget/fonted_text.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

///
/// 内容
///
class Greeting extends StatelessWidget {
  const Greeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(width: 80.0, height: 80.0),
        FractionallySizedBox(
          widthFactor: 0.9,
          child: FadeSlideTransition(
            delay: Duration(milliseconds: 300),
            builder: (context, controller) {
              return QuicksandText(
                'Good morning yohom, ready to create a new story?',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Colors.white70),
              );
            },
          ),
        ),
        _SelectDate(),
        _LetsDoIt(),
      ],
    );
  }
}

class _SelectDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        FadeSlideTransition(
          delay: Duration(milliseconds: 600),
          builder: (context, controller) {
            return Align(
              alignment: AlignmentDirectional.topCenter,
              heightFactor: 2.0,
              child: Text(
                'Story Date',
                style: Theme.of(context).textTheme.display3.copyWith(
                      color: Color(0XFF7775C5),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
              ),
            );
          },
        ),
        FadeSlideTransition(
          delay: Duration(milliseconds: 700),
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AvenirText(
                  'July 13',
                  style: Theme.of(context).textTheme.headline.copyWith(
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SPACE_NORMAL,
                Text(
                  'YESTERDAY',
                  style: Theme.of(context).textTheme.subhead.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _LetsDoIt extends StatelessWidget {
  _LetsDoIt();

  factory _LetsDoIt.forDesignTime() => _LetsDoIt();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    final theme = Theme.of(context);
    return ShowUpTransition(
      delay: 1300,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: RaisedButton(
          elevation: kElevationBig,
          padding: EdgeInsets.symmetric(vertical: kSpaceBig),
          onPressed: () {
            bloc.scrollPage.add(1);
          },
          shape: StadiumBorder(),
          color: Colors.white,
          child: Text(
            'LETS DO IT!',
            style: theme.textTheme.subhead.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}
