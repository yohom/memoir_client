import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/bloc.dart';
import 'package:memoir/app/res/color.dart';
import 'package:memoir/app/ui/screen/home/home.screen.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils/global.dart';

void main() {
  MaterialPageRoute.debugEnableFadingRoutes = true;
//  debugPrintRebuildDirtyWidgets = true;

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
          primaryColorDark: kColorPrimaryDark,
          buttonColor: kButtonColor,
          sliderTheme: SliderThemeData(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xff6869a9),
            disabledActiveTrackColor: Colors.red,
            disabledInactiveTrackColor: Colors.red,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            disabledActiveTickMarkColor: Colors.red,
            disabledInactiveTickMarkColor: Colors.red,
            thumbColor: Colors.white,
            disabledThumbColor: Colors.white,
            overlayColor: Colors.white.withOpacity(0.3),
            valueIndicatorColor: Colors.blue,
            thumbShape: RoundSliderThumbShape(),
            valueIndicatorShape: PaddleSliderValueIndicatorShape(),
            showValueIndicator: ShowValueIndicator.never,
            valueIndicatorTextStyle: TextStyle(),
          ),
        ),
        home: Builder(
          builder: (context) {
            Global.init(context);
            return HomeScreen();
          },
        ),
      ),
    );
  }
}
