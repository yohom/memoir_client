import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('abc')),
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('abc')),
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('abc')),
      ]),
    );
  }
}
