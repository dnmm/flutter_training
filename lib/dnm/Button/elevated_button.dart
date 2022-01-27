import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacing = 10.0;
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Elevated Button'),
          ),
          body: Center(
            child: Wrap(
              // us can use horizontal or vertical
              direction: Axis.vertical,
              spacing: spacing,
              children: [
                const Text("Text Here 1"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Signup'),
                ),
              ],
            ),
          ),
        ));
  }
}
