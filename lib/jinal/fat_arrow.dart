// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          //backgroundColor: Colors.amber,
        ),
        body: Material(
          color: Colors.amberAccent,
          child: Center(
            child: Text("Hello world",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 50.0)),
          ),
        ),
      )));