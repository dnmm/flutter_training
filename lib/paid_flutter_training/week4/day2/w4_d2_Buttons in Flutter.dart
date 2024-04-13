import 'package:flutter/material.dart';

void main() {
  runApp(w4d2Buttons());
}

class w4d2Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elevated Button Example'),
        ),
        body: ElevatedButton(
          style: ElevatedButton.styleFrom(
              maximumSize: Size(270, 100),
              textStyle: TextStyle(fontSize: 20),
              // primary: Colors.yellow,
              // onPrimary: Colors.red
              side: BorderSide(width: 1, color: Colors.blue)),
          child: Text('Elevated Button'),
          onPressed: () => Fluttertoast.showToast(
            msg: 'Pressed Elevated Button',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class Fluttertoast {
  static showToast({required String msg, required int fontSize}) {}
}
