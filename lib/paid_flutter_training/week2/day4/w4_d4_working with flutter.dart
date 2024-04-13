import 'package:flutter/material.dart';

void main() {
  runApp(w2d4FlutterIDE());
}

class w2d4FlutterIDE extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<w2d4FlutterIDE> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterIDE'),
        ),
        body: Center(
          child: Text(
            'Selected Index: $_index',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
