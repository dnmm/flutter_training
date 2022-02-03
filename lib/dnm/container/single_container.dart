import 'package:flutter/material.dart';

class SingleContoner extends StatelessWidget {
  const SingleContoner({Key? key}) : super(key: key);

  get body => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Single Container',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Single Container'),
          ),
          body: Center(
              child: Container(
            margin: const EdgeInsets.all(100.0),
            padding: const EdgeInsets.all(10.0),
            width: 300.0,
            height: 250.0,
            // constraints: BoxConstraints.expand(), // for all
            // constraints: BoxConstraints.expand(width: 100, height: 200), // for custome
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 8.0),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              'My Awesome Border',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // alignment: Alignment(-1.0, 0.0), //for right
            // alignment: Alignment(0.0, 0.0), // for center
            // alignment: Alignment(0.0, 1.0), // for bottom
            alignment: Alignment(0.0, -1.0), // for top
            // alignment: Alignment(0.0, -.8), // for manual top
            // alignment: Alignment(0.0, 0.6), // for manual botton
            // alignment: Alignment(-.8, 0.0),// for manual right
            // alignment: Alignment(0.4, 0.0), // for manual left
          )),
        ));
  }
}
