import 'package:flutter/material.dart';

class ListWheelScro extends StatelessWidget {
  // This widget is the root
  // of your application.
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
        //diameterRatio: 1.6,
        // offAxisFraction: -0.4,
        //squeeze: 0.8,
        children: <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 1",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 3",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 4",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 5",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 6",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 7",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 8",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 9",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Item 10",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ],
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
