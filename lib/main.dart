import 'package:flutter/material.dart';

import 'dnm/extra_learning/send_data_other_screen/main.dart';

void main() {
  // note - please comment below line and write your run app name
//runApp(const MainMyApp());0

  runApp(MyApp());
}

//riverpod
// void main() {
//   runApp(
//     // For widgets to be able to read providers, we need to wrap the entire
//     // application in a "ProviderScope" widget.
//     // This is where the state of our providers will be stored.
//     ProviderScope(
//       child: todoMyApp(),
//     ),
//   );
// }

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
