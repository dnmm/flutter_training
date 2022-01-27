import 'package:flutter/material.dart';

class MyFittedBoxExample extends StatelessWidget {
  const MyFittedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiple Row FittedBox",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Multiple Item in Row",
          ),
        ),
        body: Center(
            child: Row(
          children: const <Widget>[
            Expanded(
              child: Text('One Row First Text', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('One Row Second Text', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: FlutterLogo(),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
