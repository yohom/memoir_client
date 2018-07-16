import 'package:flutter/material.dart';
import 'package:memoir/ui/screen/home.screen.dart';

void main() => runApp(MemoirApp());

class MemoirApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
