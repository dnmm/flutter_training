import 'package:flutter/material.dart';

/// Main application widget
class W8D1Switch extends StatelessWidget {
  const W8D1Switch({super.key});

  static const String _title = 'Switch Widget';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const SwitchPage1(),
      ),
    );
  }
}

/// Stateful widget that the main application instantiates
class SwitchPage1 extends StatefulWidget {
  const SwitchPage1({super.key});

  @override
  State<SwitchPage1> createState() => _SwitchPage1State();
}

/// Private State class that goes with SwitchPage1
class _SwitchPage1State extends State<SwitchPage1> {
  bool isSwitched = false; // Variable to store the state of the first switch
  bool isSwitch = false; // Variable to store the state of the second switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
                'On/Off'), // Text indicating the purpose of the first switch
            Switch(
              value: isSwitched, // Current value of the first switch
              onChanged: (value) {
                // Callback function when the first switch state changes
                setState(() {
                  isSwitched = value; // Update the state of the first switch
                });
              },
            ),
            const SizedBox(width: 50), // Adding some space between the switches
            const Text(
                'light '), // Text indicating the purpose of the second switch
            Switch(
              value: isSwitch, // Current value of the second switch
              onChanged: (value) {
                // Callback function when the second switch state changes
                setState(() {
                  isSwitch = value; // Update the state of the second switch
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
