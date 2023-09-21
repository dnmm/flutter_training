import 'package:flutter/material.dart';

class Expandedpage extends StatelessWidget {
  const Expandedpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('Flexible Expanded'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            tooltip: 'Menu',
          ) //IconButton
          ), //AppBar
      body: Center(
        child: Container(
          height: 200,
          width: 500,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                //  child: Container(
                child: Text(
                  "White",
                  style: TextStyle(fontSize: 20),
                ),
                //  padding: EdgeInsets.all(30),
                //  color: Colors.blue,
                //  alignment: Alignment.center,
                //  width: 500,
                //   ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.green,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.pink,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.grey,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.blueGrey,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.lightGreenAccent,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "purple",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.purple,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text(
                    "Red",
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.red,
                  alignment: Alignment.center,
                  width: 500,
                ),
              ),
            ],
          ),
        ),
      ),
    ) //Container
        )); //Scaffold
  }
}
