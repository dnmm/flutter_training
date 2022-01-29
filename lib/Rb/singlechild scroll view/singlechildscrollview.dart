import 'package:flutter/material.dart';

class Singlechildscrollview extends StatelessWidget {
  const Singlechildscrollview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "scroll view", home: Scroeview());
  }
}

class Scroeview extends StatefulWidget {
  const Scroeview({Key? key}) : super(key: key);

  @override
  _ScroeviewState createState() => _ScroeviewState();
}

class _ScroeviewState extends State<Scroeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("singlechildscrollview"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                color: Colors.pinkAccent,
              ),
              Container(
                height: 600,
                color: Colors.yellow,
              )
            ],
          ),
        ));
  }
}
