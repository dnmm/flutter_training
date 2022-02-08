import 'package:flutter/material.dart';

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  _Stat createState() => _Stat();
}

class _Stat extends State<Stat> {
  int glassdrunk = 0;

  void _incrementCounter() {
    setState(() {
      glassdrunk++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          _incrementCounter();
        },
      ),
    );
  }
}
