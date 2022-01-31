import 'package:flutter/material.dart';

class MultipleCheckBox extends StatelessWidget {
  const MultipleCheckBox({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create a Single Checkbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyMultipleCheckBox(),
    );
  }
}

class MyMultipleCheckBox extends StatefulWidget {
  const MyMultipleCheckBox({Key? key}) : super(key: key);
  //final String title;

  @override
  _MyMultipleCheckBoxState createState() => _MyMultipleCheckBoxState();
}

class _MyMultipleCheckBoxState extends State<MyMultipleCheckBox> {
  bool _rahul = true;
  bool _deepak = false;
  bool _mohan = false;
  bool _anuj = false;
  bool _anshika = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create My Checkbox'),
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
              value: _rahul,
              onChanged: (value) {
                setState(() {
                  _rahul = !_rahul;
                });
              },
            ),
            const Text('Rahul'),
            //               bool _mohan = false;
            // bool _anuj = false;
            // bool _anshika = false;
            Checkbox(
              value: _deepak,
              onChanged: (value) {
                setState(() {
                  _deepak = !_deepak;
                });
              },
            ),
            const Text('Deepak'),
            Checkbox(
              value: _mohan,
              onChanged: (value) {
                setState(() {
                  _mohan = !_mohan;
                });
              },
            ),
            const Text('Mohan'),
            Checkbox(
              value: _anuj,
              onChanged: (value) {
                setState(() {
                  _anuj = !_anuj;
                });
              },
            ),
            const Text('Anuj'),
            Checkbox(
              value: _anshika,
              onChanged: (value) {
                setState(() {
                  _anshika = !_anshika;
                });
              },
            ),
            const Text('Anshika'),
          ],
        ),
      ),
    );
  }
}
