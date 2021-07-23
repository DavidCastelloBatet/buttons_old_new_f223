import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Old - New Buttons in Flutter 223',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Old - New Buttons in Flutter 223'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
