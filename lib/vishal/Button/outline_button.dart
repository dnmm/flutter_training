import 'package:flutter/material.dart';

class Out_lined_Button extends StatelessWidget {
  const Out_lined_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Outlined Button'),
      ),
      body: Center(
          child: OutlinedButton(
        child: const Text('Oulined Button'),
        onPressed: () {
          //this print in debug console when press on button
          // ignore: avoid_print
          print('Pressed');
        },
      )

          // OutlinedButton(
          //   child: const Text('Oulined Button'),
          //   onPressed: () {
          //     //this print in debug console when press on button
          //     // ignore: avoid_print
          //     print('Pressed');
          //   },
          // ),
          ),
    );
  }
}
