import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text("First page",
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50.0)),
      ),
    );
  }
}
