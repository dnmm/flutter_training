import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Layout screen",
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
        body: Center(
          child: Text(
            "Hello, Layout Screen!",
            style: TextStyle(backgroundColor: Colors.white10),
          ),
        ),
      ),
    );
  }
}
