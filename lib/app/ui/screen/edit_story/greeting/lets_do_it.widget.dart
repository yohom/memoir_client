import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/show_up.transition.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class LetsDoIt extends StatelessWidget {
  LetsDoIt();

  factory LetsDoIt.forDesignTime() => LetsDoIt();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    final theme = Theme.of(context);
    return ShowUpTransition(
      delay: 1300,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: RaisedButton(
          elevation: elevation_big,
          padding: EdgeInsets.symmetric(vertical: space_big),
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
