import 'package:flutter/material.dart';

void main() {
  runApp(w3d2containerpage());
}

class w3d2containerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Container Example'),
          ),
          body: Container(
            child: Text(
              'Hello word',
              style: TextStyle(fontSize: 35, color: Colors.blue),
            ),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(
                color: Colors.black,
                width: 3.0,
                style: BorderStyle.solid,
              ),
            ),
          )),
    );
  }
}
