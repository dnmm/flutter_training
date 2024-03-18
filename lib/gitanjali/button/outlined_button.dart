import 'package:flutter/material.dart';

class MyOutlinebutton extends StatelessWidget {
  const MyOutlinebutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OutlinedButton Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OutlinedButton Example'),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              // Yahan aap apne button press action ka code likhein
              print('Button Pressed');
            },
            child: Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
