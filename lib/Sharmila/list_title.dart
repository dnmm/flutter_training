import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

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
          ListTile(title: Text('item 1')),
          ListTile(title: Text('item 2')),
          ListTile(title: Text('item 3')),
          ListTile(title: Text('item 4')),
        ],
      )),
    );
  }
}
