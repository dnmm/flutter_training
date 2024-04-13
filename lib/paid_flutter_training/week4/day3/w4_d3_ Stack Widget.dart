import 'package:flutter/material.dart';

void main() {
  runApp(w4d3stack());
}

class w4d3stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Stack(fit: StackFit.loose, alignment: Alignment.center, children: [
        Container(
          height: 350,
          width: 350,
          color: Color.fromARGB(255, 58, 243, 33),
        ),
        Container(
          height: 250,
          width: 250,
          color: Color.fromARGB(255, 59, 232, 255),
        ),
        Container(
          height: 200,
          width: 200,
          color: Color.fromARGB(255, 33, 30, 233),
        ),
        Text(
          'Hello * Word',
          style: TextStyle(
            fontSize: 35,
            color: Colors.yellow,
          ),
        ),
      ]),
    ));
  }
}
