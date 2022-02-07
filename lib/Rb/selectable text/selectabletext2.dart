import 'package:flutter/material.dart';

class Selectablettext2 extends StatefulWidget {
  const Selectablettext2({Key? key}) : super(key: key);

  @override
  _Selectablettext2State createState() => _Selectablettext2State();
}

class _Selectablettext2State extends State<Selectablettext2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'selectable text',
      home: Selectabletextpage2(),
    );
  }
}

class Selectabletextpage2 extends StatefulWidget {
  const Selectabletextpage2({Key? key}) : super(key: key);

  @override
  _Selectabletextpage2State createState() => _Selectabletextpage2State();
}

class _Selectabletextpage2State extends State<Selectabletextpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('selectable text example'),
        ),
        body: Column(
          children: [
            SelectableText(
              "        hello this is selectable text",
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
            SelectableText(
              "      you can print it with space \n you can select text or copy also.",
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ],
        ));
  }
}
