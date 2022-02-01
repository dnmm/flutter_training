import 'package:flutter/material.dart';

class Singlechildscrollviewrow extends StatelessWidget {
  const Singlechildscrollviewrow({Key? key}) : super(key: key);

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
          title: const Text("singlechild_row_scrollview"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 350,
                color: Colors.pinkAccent,
              ),
              Container(
                width: 350,
                color: Colors.yellow,
              )
            ],
          ),
        ));
  }
}
