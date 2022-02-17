import 'package:flutter/material.dart';

class SimpleStack extends StatefulWidget {
  const SimpleStack({Key? key}) : super(key: key);

  @override
  _SimplestackState createState() => _SimplestackState();
}

class _SimplestackState extends State<SimpleStack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome my Simple Stack",
      home: SimpleStackpage(),
    );
  }
}

class SimpleStackpage extends StatefulWidget {
  const SimpleStackpage({Key? key}) : super(key: key);

  @override
  _SimpleStackpageState createState() => _SimpleStackpageState();
}

class _SimpleStackpageState extends State<SimpleStackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stack Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: StackContainer(),
            ),
            StackContainer(),
            StackContainer(),
            StackContainer(),
            StackContainer(),
          ],
        ),
      ),
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
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
    );
  }
}
