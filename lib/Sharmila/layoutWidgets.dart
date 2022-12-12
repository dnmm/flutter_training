import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    // print('width:$width and height:$height');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Layout widgets'),
      ),
      body: Column(children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('1'),
            Expanded(child: Container()),
            const Text('3'),
          ],
        ),
        const Expanded(
            child: Center(
          child: TextButton(
            onPressed: null,
            child: Text('5'),
          ),
        ))
      ]),
    ));
  }
}
