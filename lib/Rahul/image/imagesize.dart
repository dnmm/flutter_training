import 'package:flutter/material.dart';

class Imagesizepages extends StatelessWidget {
  const Imagesizepages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter testing page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter testing page',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 400,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
