import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Material(
          color: Colors.blue,
          child: Center(
            child: Text(
              "hello world",
            ),
          ),
        ),
      )));
}
