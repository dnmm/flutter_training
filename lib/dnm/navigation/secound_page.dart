import 'package:flutter/material.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({Key? key}) : super(key: key);

  @override
  _SecoundscreenState createState() => _SecoundscreenState();
}

class _SecoundscreenState extends State<SecoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcom in my Second Page",
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Secound Page",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 10.0),
                child: const Text(
                  "Go to Home Screen",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
