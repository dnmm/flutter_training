import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Rb/navigation/firstpage.dart';

class Secoundscreen extends StatefulWidget {
  const Secoundscreen({Key? key}) : super(key: key);

  @override
  _SecoundscreenState createState() => _SecoundscreenState();
}

class _SecoundscreenState extends State<Secoundscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Center(
        child: Column(children: [
          Text("Signup"),
          MaterialButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.of(context).pop(context);
              })
        ]),
      ),
    );
  }
}
