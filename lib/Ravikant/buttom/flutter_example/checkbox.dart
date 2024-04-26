import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool maleChecked = false;
  bool femaleChecked = false;
  bool otherChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checkbox Example"),
          backgroundColor: Color.fromARGB(255, 20, 157, 236),
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Text(
              'Select your Gender',
              style: TextStyle(fontSize: 43),
            ),
            Row(
              children: [
                Text(" male "),
                Checkbox(
                  value: maleChecked,
                  onChanged: (value) {
                    setState(() {
                      maleChecked = value!;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text(" female "),
                Checkbox(
                  value: femaleChecked,
                  onChanged: (value) {
                    setState(() {
                      femaleChecked = value!;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text(" other "),
                Checkbox(
                  value: otherChecked,
                  onChanged: (value) {
                    setState(() {
                      otherChecked = value!;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
