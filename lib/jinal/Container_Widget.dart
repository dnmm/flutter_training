// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
    //padding: EdgeInsets.all(50.0),
    decoration: BoxDecoration(color: Colors.blueAccent),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          "1",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
        ),
        Text(
          "2",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
        ),
        Text(
          "3",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
        ),
        Text(
          "4",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 100),
        ),
      ],
    ),
  ));
}
