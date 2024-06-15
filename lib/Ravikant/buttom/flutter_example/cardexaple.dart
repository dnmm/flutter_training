import 'package:flutter/material.dart';

class cardExampleApp extends StatelessWidget {
  const cardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('card  Sample example')),
        body: Center(
          child: Card(
              elevation: 24,
              shadowColor: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "card 1",
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ),
      ),
    );
  }
}
