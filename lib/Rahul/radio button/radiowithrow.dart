import 'package:flutter/material.dart';

class Radiobuttonrow extends StatelessWidget {
  const Radiobuttonrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter testing page',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: const StateExample());
  }
}

class StateExample extends StatefulWidget {
  const StateExample({Key? key}) : super(key: key);

  @override
  _StateExampleState createState() => _StateExampleState();
}

enum colors { green, blue }

class _StateExampleState extends State<StateExample> {
  colors _color = colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text("Radio button")),
      body: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          const Text(
            "choose color:",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: ListTile(
              title: const Text("Green"),
              tileColor: Colors.pink[100],
              //horizontalTitleGap: 0,
              leading: Radio(
                value: colors.green,
                groupValue: _color,
                onChanged: (colors? value) {
                  setState(() {
                    _color = value ?? _color;
                  });
                },
              ),
            ),
          ),
          Flexible(
            child: ListTile(
              title: const Text("Blue"),
              tileColor: Colors.blue[100],
              //horizontalTitleGap: 0,
              leading: Radio<colors>(
                value: colors.blue,
                groupValue: _color,
                onChanged: (colors? value) {
                  setState(() {
                    _color = value ?? _color;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
