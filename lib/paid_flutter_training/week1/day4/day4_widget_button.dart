import 'package:flutter/material.dart';

void main() {
  runApp(Widgetbutton());
}

class Widgetbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Text Widget:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text('Hello, Flutter!'),
              SizedBox(height: 20.0),
              Text(
                'Image Widget:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/flutter_logo.png', width: 100.0, height: 100.0),
              SizedBox(height: 20.0),
              Text(
                'Button Widget:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: Text('Press Me'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Container Widget:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container Widget',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
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
