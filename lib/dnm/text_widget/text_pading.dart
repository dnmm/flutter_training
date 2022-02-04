import 'package:flutter/material.dart';

class TextPadingUse extends StatelessWidget {
  const TextPadingUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to use Pading',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'How to use TextSpan Material',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
              ),
            ),
          ),
          body: Padding(
            // padding: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
            padding: EdgeInsets.all(30),
            // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            // padding: EdgeInsets.symmetric(vertical: 30),
            //padding: EdgeInsets.zero,
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 25),
            ),
          )),
    );
  }
}
