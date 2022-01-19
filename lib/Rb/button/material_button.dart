import 'package:flutter/material.dart';

void main() {
  runApp(const Materialbuto());
}

class Materialbuto extends StatelessWidget {
  const Materialbuto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sample app",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sample app",
          ),
        ),
        body: Center(
          child: MaterialButton(
            color: Colors.red[400],
            splashColor: Colors.green,
            //highlightColor: Colors.yellow,
            height: 40.0,
            minWidth: 200.0,
            onPressed: () {},
            child: const Text(
              "material button",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
             */
            shape: Border.all(color: Colors.black, width: 3.0),
          ),
        ),
      ),
    );
  }
}