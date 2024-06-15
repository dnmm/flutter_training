import 'package:flutter/material.dart';

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
          height: 300,
          width: 300,
          color: Color.fromARGB(255, 243, 170, 33),
        ),
        Container(
          height: 250,
          width: 250,
          color: Color.fromARGB(255, 124, 28, 189),
        ),
        Container(
          height: 200,
          width: 200,
          color: Color.fromARGB(255, 30, 233, 115),
        ),
        Text(
          'Hello * Ravikant ',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 212, 56, 35),
          ),
        ),
      ]),
    ));
  }
}
