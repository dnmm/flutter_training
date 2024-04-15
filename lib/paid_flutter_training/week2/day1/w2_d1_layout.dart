import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Flutter Layout Example',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: Text(
                  'Container Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.green,
                    child: Text(
                      'Row Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.orange,
                    child: Text(
                      'Row Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Text(
                    'Stack Widget',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  children: List.generate(
                    10,
                    (index) => ListTile(
                      title: Text('Item $index'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
