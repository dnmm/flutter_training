import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "navigatinon",
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "first page",
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
                  "home screen",
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
