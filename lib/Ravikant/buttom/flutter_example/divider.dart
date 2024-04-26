import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Divider Example'),
        ),
        body: Column(
          children: <Widget>[
            Text('Above Divider'),
            Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 30,
              color: Colors.black,
            ),
            Text('Below Divider'),
            Divider(
              height: 30,
              thickness: 2,
              indent: 20,
              endIndent: 30,
              color: Colors.black,
            ),
            Text("Divider R"),
            Divider(
              height: 20,
              // thickness: 5,
              indent: 30,
              endIndent: 40,
              color: Colors.black,
            ),
            Text("divider")
          ],
        ),
      ),
    );
  }
}
