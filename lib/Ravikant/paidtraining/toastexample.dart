import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toast Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "This is a Toast message",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
