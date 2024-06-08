import 'package:flutter/material.dart';

void main() {
  runApp(W8D4ThemesInFlutter());
}

class W8D4ThemesInFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blueAccent,
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          secondary: Colors.pink[100],
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.white
          ? Theme.of(context).colorScheme.secondary
          : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('Home Page')),
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeBackgroundColor,
              child: Text('Press Me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
