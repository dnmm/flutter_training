import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  String text = 'some text';
  void pressButton() {
    print('Button predded...');
    text = 'Button is pressed';
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('This is my app bar title'),
            ),
            body: Column(
              children: [
                Text(text),
                TextButton(
                    onPressed: () {
                      setState(() {
                        text = "Text button pressed";
                      });
                    },
                    child: Text('press text button')),
                FloatingActionButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
                ElevatedButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
                OutlinedButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
              ],
            )));
  }
}
