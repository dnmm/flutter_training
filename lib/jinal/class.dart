import 'package:flutter/material.dart';
import 'First_screen.dart';

class Firstclass extends StatelessWidget {
  const Firstclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My App"),
              //backgroundColor: Colors.amber,
            ),
            body: const Firstscreen()));
  }
}
