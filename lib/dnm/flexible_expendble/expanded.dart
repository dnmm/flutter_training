import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

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
        child: Container(
          height: 200,
          width: 500,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                //  child: Container(
                child: Text(
                  "First",
                  style: TextStyle(fontSize: 20),
                ),
                //  padding: EdgeInsets.all(30),
                //  color: Colors.blue,
                //  alignment: Alignment.center,
                //  width: 500,
                //   ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    "Second",
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
                    "Third",
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
