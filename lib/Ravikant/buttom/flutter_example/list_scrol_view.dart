import 'package:flutter/material.dart';

class ListWheelScrork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListWheelScrollView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyWheel(),
    );
  }
}

class MyWheel extends StatefulWidget {
  @override
  _MyWheelState createState() => _MyWheelState();
}

class _MyWheelState extends State<MyWheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeksforgeeks"),
        backgroundColor: Colors.green,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: List.generate(10, (index) {
          return ElevatedButton(
            onPressed: () {},
            child: Text(
              "Item ${index + 1}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          );
        }),
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
