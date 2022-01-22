import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Stateless Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title of App Bar'),
        ),
        body: const Center(
          child: Text('Sample Text'),
        ),
      ),
    );
  }
}
