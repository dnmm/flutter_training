import 'package:flutter/material.dart';

class w2d4DE_Scaffold extends StatelessWidget {
  const w2d4DE_Scaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "use scaffold ",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Use scaffold",
          ),
        ),
        body: Center(
          child: Text('Hello, Rk!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add onPressed functionality here
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call")
        ]),
      ),
    );
  }
}
   