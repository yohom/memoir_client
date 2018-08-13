import 'package:flutter/material.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class StepIndicator extends StatelessWidget {
  final int goToPage;
  final int returnToPage;

  const StepIndicator({
    Key key,
    @required this.goToPage,
    @required this.returnToPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return SafeArea(
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: const EdgeInsets.only(right: kSpaceBig),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.keyboard_arrow_up),
                color: Colors.white.withOpacity(0.4),
                onPressed: () => bloc.scrollPage.add(returnToPage),
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                color: Colors.white,
                onPressed: () => bloc.scrollPage.add(goToPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
