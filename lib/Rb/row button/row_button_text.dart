import 'package:flutter/material.dart';

void main() {
  runApp(const RObuttontext());
}

class RObuttontext extends StatelessWidget {
  const RObuttontext({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "this is a simpe text",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "like us",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
