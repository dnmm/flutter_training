import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/navigation/push_data_other_screen/main.dart';

import 'Sharmila/layoutWidgets.dart';

void main() {
  // note - please comment below line and write your run app name
  runApp(MyApp());

  // runApp(NamePositionalParameter());
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
