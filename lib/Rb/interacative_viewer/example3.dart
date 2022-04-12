import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  @override
  _Example3State createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  String tiger = "images/a.png";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: InteractiveViewer(
              constrained: true,
              scaleEnabled: true,
              //if we not use bondary marging then its not move without zooming
              boundaryMargin: const EdgeInsets.all(40.0),
              child: Image.asset(tiger),
              // minScale: 0.3,
              // maxScale: 20,
            ),
          ),
        ),
      ),
    );
  }
}
