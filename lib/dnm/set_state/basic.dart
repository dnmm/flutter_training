import 'package:flutter/material.dart';

class SetStateWidegt extends StatefulWidget {
  const SetStateWidegt({Key? key}) : super(key: key);

  @override
  State<SetStateWidegt> createState() => _SetStateWidegtState();
}

class _SetStateWidegtState extends State<SetStateWidegt> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to material app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to material app'),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text("$num"),
          onPressed: () {
            setState(() {
              num++;
            });
          },
        )),
      ),
    );
  }
}
