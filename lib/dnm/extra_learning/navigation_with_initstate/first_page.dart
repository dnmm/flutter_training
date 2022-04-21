import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<MyFirstPage> {
  String _outputText = "Wait two second for magic";

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
          "Welcom in my First Page",
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
                    horizontal: 15.0, vertical: 10.0),
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
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    String data = "Welcome to First Page";
    setState(() {
      _outputText = data;
    });
  }
}
