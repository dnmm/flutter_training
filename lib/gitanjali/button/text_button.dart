import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextButton Example'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              // Button Pressed
              print('Text Button Pressed');
            },
            child: Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
