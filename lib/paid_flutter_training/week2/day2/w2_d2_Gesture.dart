import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gesture Example',
      home: GestureDetectorExample(),
    );
  }
}

class GestureDetectorExample extends StatefulWidget {
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  String _gesture = 'Swipe or Tap Me!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Gesture Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _gesture = 'Tapped!';
            });
          },
          onDoubleTap: () {
            setState(() {
              _gesture = 'Double Tapped!';
            });
          },
          onLongPress: () {
            setState(() {
              _gesture = 'Long Pressed!';
            });
          },
          onHorizontalDragStart: (details) {
            setState(() {
              _gesture = 'Horizontal Drag Start!';
            });
          },
          onVerticalDragStart: (details) {
            setState(() {
              _gesture = 'Vertical Drag Start!';
            });
          },
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                _gesture,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
