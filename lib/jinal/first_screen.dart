// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text("Hello world",
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50.0)),
      ),
    );
  }
}
