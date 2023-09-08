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
          ListTile(
            title: Text('battery_full'),
            subtitle: Text('battery is full'),
            leading: Icon(Icons.battery_full),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text('ac_unit'),
            subtitle: Text('unit is ac unit'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text('cable'),
            subtitle: Text('This is cable'),
            leading: Icon(Icons.cable),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text('dark_mode'),
            subtitle: Text('mode is dark'),
            leading: Icon(Icons.dark_mode),
            trailing: Icon(Icons.star),
          ),
        ],
      )),
    );
  }
}
