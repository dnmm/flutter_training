import 'package:flutter/material.dart';

class SingleCheckBox extends StatelessWidget {
  const SingleCheckBox({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create a Single Checkbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySingleCheckBox(),
    );
  }
}

class MySingleCheckBox extends StatefulWidget {
  const MySingleCheckBox({Key? key}) : super(key: key);
  //final String title;

  @override
  _MySingleCheckBoxState createState() => _MySingleCheckBoxState();
}

class _MySingleCheckBoxState extends State<MySingleCheckBox> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create My Checkbox'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                  const Text('do you want to car ?'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
