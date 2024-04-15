import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // accentColor: Colors.green,
        fontFamily: 'Roboto', // Custom font family
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Custom Font and Text Styles',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 20.0),
            Text(
              'Body Text with Custom Style',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button with Accent Color'),
            ),
          ],
        ),
      ),
    );
  }
}
