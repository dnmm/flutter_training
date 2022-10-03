import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

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
      backgroundColor: Colors.green,
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
                "Splansh Screen",
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.redAccent,
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
