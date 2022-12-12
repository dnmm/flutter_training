import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Top_bottom_expand());
}

class Top_bottom_expand extends StatelessWidget {
  const Top_bottom_expand();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
//              mainAxisAlignment: MainAxisAlignment.center,
            Align(
              alignment: Alignment.topLeft,
              child: Text("Top left"),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text("Top center"),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text("Top right"),
            ),
            Expanded(
                child: Center(
              child: Text("Center"),
            )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Bottom left"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Bottom center"),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Bottom right"),
            ),
          ],
        ),
      ),
    );
  }
}
