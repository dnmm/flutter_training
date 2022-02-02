import 'package:flutter/material.dart';

class Containerpage extends StatefulWidget {
  const Containerpage({Key? key}) : super(key: key);

  @override
  _ContainerpageState createState() => _ContainerpageState();
}

class _ContainerpageState extends State<Containerpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container page",
      home: Containerhomepage(),
    );
  }
}

class Containerhomepage extends StatefulWidget {
  const Containerhomepage({Key? key}) : super(key: key);

  @override
  _ContainerhomepageState createState() => _ContainerhomepageState();
}

class _ContainerhomepageState extends State<Containerhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0099a9),
        ),
        body: Column(children: <Widget>[
          SizedBox(height: 20),
          Container(
            child: Text(" starting row"),
          ),
          Row(
            //ROW 1
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                color: Colors.purple,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                color: Colors.purple,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
            ],
          ),
          Row(//ROW 2
              children: [
            Container(
              color: Colors.orange,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            )
          ]),
          Row(// ROW 3
              children: [
            Container(
              color: Colors.orange,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ]),
          Container(
              color: Colors.red,
              margin: EdgeInsets.all(15.0),
              child: Text("start column")),
          Container(
            color: Colors.purple,
            margin: EdgeInsets.all(25.0),
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.purple,
            margin: EdgeInsets.all(25.0),
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
        ]));
  }
}
