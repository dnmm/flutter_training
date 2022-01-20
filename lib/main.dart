import 'package:flutter/material.dart';

// import 'dnm/dnm_main.dart';

void main() {
  // note - please comment below line and write your run app name
  // runApp(const DnmMainMyApp());
  runApp(const MainMyApp());
}

class MainMyApp extends StatelessWidget {
  const MainMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
