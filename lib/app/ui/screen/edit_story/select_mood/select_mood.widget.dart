import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class SelectMood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SafeArea(child: SizedBox(width: 80.0, height: 80.0)),
        Text(
          'How was your day today?',
          style: Theme.of(context).textTheme.headline.copyWith(
                color: Colors.white70,
                fontFamily: 'Quicksand',
              ),
        ),
        RateYourToday(),
        RaisedButton(
          onPressed: () {
            bloc.scrollPage.add(0);
          },
        ),
      ],
    );
  }
}

class RateYourToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.red,
    );
  }
}
