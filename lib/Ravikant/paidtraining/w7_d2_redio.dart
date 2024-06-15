import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({Key? key}) : super(key: key);

  static const String _title = 'Sample Radio Button';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { Male, Femail, Other }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.Male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Male,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Femail'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Femail,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Other'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Other,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
