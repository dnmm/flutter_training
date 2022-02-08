import 'dart:core';

import 'package:flutter/material.dart';

class Stateful1 extends StatelessWidget {
  const Stateful1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      home: book(),
    );
  }
}

class book extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _bookstate();
  }
}

class _bookstate extends State<book> {
  String namebook = "";
  var writers = {'Chetan Bhagat', 'Dr Carol', 'Weck'};
  var _currentItemSelected = 'Chetan Bhagat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(onChanged: (String userInput) {
              setState(() {
                namebook = userInput;
              });
            }),
            DropdownButton<String>(
              items: writers.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String) {
                setState(() {
                  //this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
            ),
            Text(
              "Enter book name is $namebook",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
