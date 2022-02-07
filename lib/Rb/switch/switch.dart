import 'package:flutter/material.dart';

/// main application widget
class Switch1 extends StatelessWidget {
  const Switch1({Key? key}) : super(key: key);

  static const String _title = 'switch widget';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Switchpage1(),
      ),
    );
  }
}

/// stateful widget that the main application instantiates
class Switchpage1 extends StatefulWidget {
  const Switchpage1({Key? key}) : super(key: key);

  @override
  State<Switchpage1> createState() => _Switchpage1State();
}

/// private State class that goes with MyStatefulWidget
class _Switchpage1State extends State<Switchpage1> {
  bool isSwitched = false;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('on/off'),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SizedBox(width: 50),
            Text('flightmode'),
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
