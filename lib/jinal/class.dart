// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_training/jinal/first_screen.dart';

void main() => runApp(myapp());

// ignore: camel_case_types, use_key_in_widget_constructors
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
              //backgroundColor: Colors.amber,
            ),
            body: firstscreen()));
  }
}
