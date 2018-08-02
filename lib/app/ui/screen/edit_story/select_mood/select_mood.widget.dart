import 'package:flutter/material.dart';
import 'package:memoir/framework/ui.dart';

class SelectMood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: () {
          bloc.scrollPage.add(0);
        }),
      ],
    );
  }
}
