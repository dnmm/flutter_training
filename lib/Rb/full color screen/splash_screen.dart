import 'package:flutter/material.dart';

class Splashc extends StatelessWidget {
  const Splashc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: "flutter testing page",
      home: const Splhomepage(),
    );
  }
}

class Splhomepage extends StatefulWidget {
  const Splhomepage({Key? key}) : super(key: key);

  @override
  _SplhomepageState createState() => _SplhomepageState();
}

class _SplhomepageState extends State<Splhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              /* CircularProgressIndicator(
                backgroundColor: Colors.white,
              )*/
              Text(
                "splansh\nscreen",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Cursive",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
