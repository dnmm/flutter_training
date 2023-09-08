import 'package:flutter/material.dart';

class VoiceIncrease2 extends StatelessWidget {
  const VoiceIncrease2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySliderApp(),
    );
  }
}

class MySliderApp extends StatefulWidget {
  MySliderApp({Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Valume Increase'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                Icon(
                  Icons.volume_up,
                  size: 50,
                ),
                new Expanded(
                    child: Slider(
                        value: _value.toDouble(),
                        min: 5.0,
                        max: 40.0,
                        divisions: 10,
                        activeColor: Colors.yellow,
                        inactiveColor: Colors.red,
                        label: 'Volume',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        })),
              ])),
        ));
  }
}
