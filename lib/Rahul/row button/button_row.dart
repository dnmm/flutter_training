import 'package:flutter/material.dart';

class Rowbutton extends StatelessWidget {
  const Rowbutton({Key? key}) : super(key: key);

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  splashColor: Colors.green,
                  onPressed: () {},
                  child: const Text(
                    "material button",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.green,
                  onPressed: () {},
                  child: const Text(
                    "material button",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
