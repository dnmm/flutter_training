import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacing2 = 20.0;
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to text'),
          ),
          body: Wrap(
            direction: Axis.vertical,
            spacing: spacing2,
            children: [
              const Text("Text Here 1"),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
            ],
          ),
        ));
  }
}
