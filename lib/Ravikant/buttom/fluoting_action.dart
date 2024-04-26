import 'package:flutter/material.dart';

class MyFloatingActionButtonrk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Floating Action Button",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 124, 189, 206),
        onPressed: () {
          print("Floatin Actio Button rk");
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 148, 211, 240),
        title: Text("My Floating Action Button RK"),
        // centerTitle: false,
        centerTitle: true,
      ),
    );
  }
}
