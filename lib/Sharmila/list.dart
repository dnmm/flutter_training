import 'package:flutter/material.dart';

class ListViewInDetail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  const ListViewHome();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
          Text('Item 4'),
        ],
      )),
    );
  }
}
