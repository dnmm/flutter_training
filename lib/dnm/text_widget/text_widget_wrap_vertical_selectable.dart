import 'package:flutter/material.dart';

class TextWidgetWrapVertical extends StatelessWidget {
  const TextWidgetWrapVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to tex'),
          ),
          body: Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: const [
              Text("Text Here 1"),
              SelectableText("Text Here 2"),
              Text("Text Here 3"),
            ],
          ),
        ));
  }
}
