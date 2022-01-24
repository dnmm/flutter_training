import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to tex'),
          ),
          body: Wrap(
            spacing: 20,
            children: const [
              Text("Text Here 1"),
              Text("Text Here 2"),
              Text("Text Here 3"),
            ],
          ),
        ));
  }
}
