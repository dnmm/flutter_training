import 'package:flutter/material.dart';

void main() {
  runApp(w3d1scaffold());
}

class w3d1scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
        ),
      ),
    );
  }
}
