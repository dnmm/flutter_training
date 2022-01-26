import 'package:flutter/material.dart';

class MultipleContoner extends StatelessWidget {
  const MultipleContoner({Key? key}) : super(key: key);

  get body => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Welcome Multiple Container'),
            ),
            body: Row(
                //ROW 1
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.amber[600],
                    width: 48.0,
                    height: 48.0,
                  ),
                  Container(
                    color: Colors.blue,
                    margin: const EdgeInsets.all(25.0),
                    child: const FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.amber[600],
                    width: 48.0,
                    height: 48.0,
                  ),
                ])));
  }
}
