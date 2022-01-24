import 'package:flutter/material.dart';

class TextButton2 extends StatelessWidget {
  const TextButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to text'),
          ),
          body: Wrap(
            direction: Axis.vertical,
            spacing: 20,
            children: [
              const Text("Text Here 1"),
              TextButton(
                onPressed: () {},
                child: const Text('Disabled'),
              ),
            ],
          ),
        ));
  }
}
