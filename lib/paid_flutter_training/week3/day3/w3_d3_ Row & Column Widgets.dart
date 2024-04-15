import 'package:flutter/material.dart';

void main() {
  runApp(W3D3RowColumn());
}

class W3D3RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Row & Column Example'),
      ),
      body: Row(
        children: [
          Text('Row1'),
          Text('Row2'),
          Text('Row3'),
        ],
      ),
    ));
  }
}
