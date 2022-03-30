import 'package:flutter/material.dart';

class BarsBtn extends StatelessWidget {
  const BarsBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buttonbar',
      home: Barbtn(),
    );
  }
}

class Barbtn extends StatefulWidget {
  const Barbtn({Key? key}) : super(key: key);

  @override
  _BarbtnState createState() => _BarbtnState();
}

class _BarbtnState extends State<Barbtn> {
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
