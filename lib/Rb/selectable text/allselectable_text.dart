import 'package:flutter/material.dart';

class Selectablettexts extends StatefulWidget {
  const Selectablettexts({Key? key}) : super(key: key);

  @override
  _SelectablettextsState createState() => _SelectablettextsState();
}

class _SelectablettextsState extends State<Selectablettexts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'selectable text',
      home: Selectabletextpage(),
    );
  }
}

class Selectabletextpage extends StatefulWidget {
  const Selectabletextpage({Key? key}) : super(key: key);

  @override
  _SelectabletextpageState createState() => _SelectabletextpageState();
}

class _SelectabletextpageState extends State<Selectabletextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('selectable text example'),
        ),
        body: SelectableText.rich(
          TextSpan(
              // text: "hello",
              // style: TextStyle(fontSize: 48.0),
              children: [
                TextSpan(
                    text: "   colors is ",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    )),
                TextSpan(
                    text: "red  you can choose also",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    )),
                TextSpan(
                    text: "you can sellect all text in this way",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    )),
              ]),
        ));
  }
}
