import 'package:flutter/material.dart';

class NameParameter extends StatefulWidget {
  const NameParameter({Key? key}) : super(key: key);

  @override
  State<NameParameter> createState() => _NameParameterState();
}

class _NameParameterState extends State<NameParameter> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Builder Grid',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
              ),
            ),
          ),
          body: Text('data')),
    );
  }
}
