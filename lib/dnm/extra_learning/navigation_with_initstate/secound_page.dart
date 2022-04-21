import 'package:flutter/material.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({Key? key}) : super(key: key);

  @override
  _SecoundscreenState createState() => _SecoundscreenState();
}

class _SecoundscreenState extends State<SecoundScreen> {
  String _outputText = "Wait five second for magic";

  @override
  void initState() {
    super.initState();
    getDate();
  }

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
            Text((_outputText)),
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

  Future<void> getDate() async {
    await Future<dynamic>.delayed(const Duration(seconds: 5));
    String data = "Welcome to Second Page";
    setState(() {
      _outputText = data;
    });
  }
}
