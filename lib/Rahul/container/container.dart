import 'package:flutter/material.dart';

class Containerpages extends StatefulWidget {
  const Containerpages({Key? key}) : super(key: key);

  @override
  _ContainerpagesState createState() => _ContainerpagesState();
}

class _ContainerpagesState extends State<Containerpages> {
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
            child: Text(" Starting row"),
          ),
          Row(
            //ROW 1
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.all(25.0),
                child: Text(" Starting row"),
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
            ),
             Container(
              color: Colors.red,
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
              height: 30,
              width: 150,
              alignment: Alignment.center,
              child: Text("Start column")),
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
