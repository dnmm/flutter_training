import 'package:flutter/material.dart';

class Simplestack extends StatefulWidget {
  const Simplestack({Key? key}) : super(key: key);

  @override
  _SimplestackState createState() => _SimplestackState();
}

class _SimplestackState extends State<Simplestack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "stackpage",
      home: Simplestackpage(),
    );
  }
}

class Simplestackpage extends StatefulWidget {
  const Simplestackpage({Key? key}) : super(key: key);

  @override
  _SimplestackpageState createState() => _SimplestackpageState();
}

class _SimplestackpageState extends State<Simplestackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stack page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                // alignment: Alignment(0.0, 0.9),
                child: Stack(
                  // alignment: Alignment.topLeft,
                  //alignment: Alignment.bottomLeft,
                  alignment: Alignment.center,
                  //alignment: Alignment.centerLeft,
                  //alignment: Alignment.topCenter,
                  //fit: StackFit.expand,

                  children: [
                    Container(
                      height: 450,
                      width: 450,
                      color: Colors.tealAccent,
                      child: Text(
                        'lower',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      //alignment: Alignment(0.0, -.9),
                      alignment: Alignment(0.0, 0.9),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.blue,
                      child: Text('medium'),
                      alignment: Alignment(0.0, 0.9),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      color: Colors.yellow,
                      child: Text('upper'),
                      alignment: Alignment(0.0, 0.9),
                    ),
                    Container(
                      child: Text('new text'),
                    )
                  ],
                ),
              ),
            ),
            Container(
              // alignment: Alignment(0.0, 0.9),
              child: Stack(
                // alignment: Alignment.topLeft,
                //alignment: Alignment.bottomLeft,
                alignment: Alignment.center,
                //alignment: Alignment.centerLeft,
                //alignment: Alignment.topCenter,
                //fit: StackFit.expand,

                children: [
                  Container(
                    height: 450,
                    width: 450,
                    color: Colors.tealAccent,
                    child: Text(
                      'lower',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    //alignment: Alignment(0.0, -.9),
                    alignment: Alignment(0.0, 0.9),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                    child: Text('medium'),
                    alignment: Alignment(0.0, 0.9),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                    child: Text('upper'),
                    alignment: Alignment(0.0, 0.9),
                  ),
                  Container(
                    child: Text('new text'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
