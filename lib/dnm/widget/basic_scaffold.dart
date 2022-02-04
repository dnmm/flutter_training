import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyAppScaffold extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //we can use container or other widigent in place of matirial app
    return MaterialApp(
      title: "My Flutter App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
