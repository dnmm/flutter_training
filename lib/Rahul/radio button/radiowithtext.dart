import 'package:flutter/material.dart';

class Radiobuttonwithtext extends StatelessWidget {
  const Radiobuttonwithtext({Key? key}) : super(key: key);

  static const String _title = 'Radio button';

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

enum SingingCharacter { male, femail, other }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.male;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                "gender",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('male'),
                leading: Radio(
                  value: SingingCharacter.male,
                  groupValue: _character,
                  onChanged: (SingingCharacter? valu) {
                    setState(() {
                      _character = valu;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('femail'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.femail,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('other'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.other,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                "course",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('BCA'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.other,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            /*
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text('bca'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.femail,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text('b.tech'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.other,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            */
          ]),
    );
  }
}
