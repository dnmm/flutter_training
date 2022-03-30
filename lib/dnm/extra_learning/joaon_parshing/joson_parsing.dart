import 'package:flutter/material.dart';

class JosonParshing extends StatelessWidget {
  const JosonParshing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to use Joson Parshing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'How to use Joson Parshing',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(30),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Call Api",
                style: TextStyle(fontSize: 25),
              ),
            )),
      ),
    );
  }
}
