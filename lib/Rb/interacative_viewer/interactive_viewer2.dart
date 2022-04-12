import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: InteractiveViewer(
              //for moveing
              constrained: true,
              //for zooming
              scaleEnabled: true,
              boundaryMargin: const EdgeInsets.all(50.0),
              minScale: 0.9,
              maxScale: 10,
              child: Image.network('https://picsum.photos/250?image=9')),
        ),
      ),
    );
  }
}
