import 'package:flutter/material.dart';

class FlexibledWidget extends StatelessWidget {
  const FlexibledWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            tooltip: 'Menu',
          ) //IconButton
          ), //AppBar
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              //fit: FlexFit.loose,
              child: Container(
                child: Text(
                  "First",
                  style: TextStyle(fontSize: 20),
                ),
                padding: EdgeInsets.all(30),
                color: Colors.blue,
                alignment: Alignment.center,
                width: 800,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Text(
                  "Second",
                  style: TextStyle(fontSize: 20),
                ),
                padding: EdgeInsets.all(30),
                color: Colors.yellow,
                alignment: Alignment.center,
                width: 200,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                child: Text(
                  "Third",
                  style: TextStyle(fontSize: 20),
                ),
                padding: EdgeInsets.all(30),
                color: Colors.red,
                alignment: Alignment.center,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    ) //Container
        )); //Scaffold
  }
}
