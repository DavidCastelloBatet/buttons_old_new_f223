import 'package:flutter/material.dart';

import './title.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // RaisedButton versus ...ElevatedButton
              TitleWidget(
                  titulo: 'Old - RaisedButton', colorOldNew: Colors.red),
              RaisedButton(
                onPressed: () {
                  print('Raised Button');
                },
                child: Text('Raised Button'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              TitleWidget(
                  titulo: 'New - ElevatedButton', colorOldNew: Colors.green),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
              ),
              Divider(height: 30, color: Colors.black),

              // FlatButton versus ...TextButton
              TitleWidget(titulo: 'Old - FlatButton', colorOldNew: Colors.red),
              FlatButton(
                onPressed: () {
                  print('Flat Button');
                },
                child: Text('Flat Button'),
                textColor: Colors.blue,
              ),
              TitleWidget(
                  titulo: 'New - TextButton', colorOldNew: Colors.green),
              TextButton(
                onPressed: () {
                  print('TextButton');
                },
                child: Text('TextButton'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
              ),
              Divider(height: 30, color: Colors.black),

              // OutlineButton versus ... OutlinedButton
              TitleWidget(
                  titulo: 'Old - OutlineButton', colorOldNew: Colors.red),
              OutlineButton(
                onPressed: () {
                  print('Outline Button');
                },
                child: Text('OutlineButton'),
                textColor: Colors.blue,
                borderSide: BorderSide(color: Colors.blue),
              ),
              TitleWidget(
                  titulo: 'New - OutlinedButton', colorOldNew: Colors.green),
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton');
                },
                child: Text('OutliedButton'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
