import 'package:flutter/material.dart';

class CountGridView extends StatelessWidget {
  const CountGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Count Grid',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'How Count Grid',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow,
                ),
              ),
            ),
            body: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            )));
  }
}
