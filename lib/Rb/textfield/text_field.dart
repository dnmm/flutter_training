import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/button1.dart';

class Textfilds extends StatelessWidget {
  const Textfilds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter testing page",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "flutter testing page ",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              //ctr+space (all property of widget)
              //maxLength: 10,
              //maxLines: 3,
              decoration: InputDecoration(
                //hintText: 'user name',
                labelText: 'user id',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
