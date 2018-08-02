import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/bloc.dart';
import 'package:memoir/app/res/color.dart';
import 'package:memoir/app/ui/screen/home/home.screen.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

void main() {
  MaterialPageRoute.debugEnableFadingRoutes = true;

  runApp(MemoirApp());
}

class MemoirApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: Bloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: kBackgroundColor,
          primaryColor: kColorPrimary,
          buttonColor: kButtonColor,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
