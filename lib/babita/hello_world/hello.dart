import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
            backgroundColor: Colors.amber,
          ),
          body: const Material(
            color: Colors.amberAccent,
            child: Center(
              child: Text("Hello world",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50.0)),
            ),
          ),
        ));
  }
}
