import 'package:flutter/material.dart';

class Buttonbars extends StatelessWidget {
  const Buttonbars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buttonbar',
      home: Buttonbarpage(),
    );
  }
}

class Buttonbarpage extends StatefulWidget {
  const Buttonbarpage({Key? key}) : super(key: key);

  @override
  _ButtonbarpageState createState() => _ButtonbarpageState();
}

class _ButtonbarpageState extends State<Buttonbarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ButtonBar(
          children: [
            SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              child: Text('home'),
            ),
            SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              child: Text('gellery'),
            ),
            SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              child: Text('about'),
            ),
            SizedBox(width: 30),
            MaterialButton(
              onPressed: () {},
              child: Text('services'),
            ),
          ],
          alignment: MainAxisAlignment.start,
          //mainAxisSize: MainAxisSize.max,
        ),
      ),
    );
  }
}
