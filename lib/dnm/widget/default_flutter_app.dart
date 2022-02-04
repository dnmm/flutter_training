import 'package:flutter/material.dart';

class MyNewDefaultApp extends StatelessWidget {
  const MyNewDefaultApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter New App",
      home: MyNewApp2(),
    );
  }
}

class MyNewApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How to use Default App',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
