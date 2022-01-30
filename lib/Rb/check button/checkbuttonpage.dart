import 'package:flutter/material.dart';

class Checkbutt extends StatelessWidget {
  const Checkbutt({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create a Checkbox page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checkbox = true;
  bool _checkboxListTile = false;
  bool _checkboxListTile1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a Checkbox'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
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
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('tata motors'),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('maruti suziki'),
              value: _checkboxListTile1,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile1 = !_checkboxListTile1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
