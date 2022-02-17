import 'package:flutter/material.dart';

/// main application widget
class SwitchButton extends StatelessWidget {
  const SwitchButton({Key? key}) : super(key: key);

  static String _title = 'Switch Button';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: MySwitchButton(),
      ),
    );
  }
}

/// stateful widget that the main application instantiates
class MySwitchButton extends StatefulWidget {
  const MySwitchButton({Key? key}) : super(key: key);

  @override
  State<MySwitchButton> createState() => _MySwitchButtonState();
}

/// private State class that goes with MyStatefulWidget
class _MySwitchButtonState extends State<MySwitchButton> {
  bool isSwitched = true;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('On/Off'),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SizedBox(width: 50),
            Text('Flight Mode'),
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
