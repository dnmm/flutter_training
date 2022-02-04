import 'package:flutter/material.dart';

class TextMaterialUse extends StatelessWidget {
  const TextMaterialUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to use Text Material',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'How to use Text Material',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "Simple Text",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            //textAlign: TextAlign.left,
            //textDirection: TextDirection.ltr,
            //textDirection: TextDirection.rtl,
            //softwrap take boolean function
            //if true then it take space according him
            //softWrap: false,
            // softWrap: true,
          ),
        ),
      ),
    );
  }
}
