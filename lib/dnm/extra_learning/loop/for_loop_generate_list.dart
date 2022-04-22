import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  String get title => "Generate List";

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4, 5, 6, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [for (var i in text) Text(i.toString())],
      ),
    );
  }
}
