import 'package:flutter/material.dart';

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
            children: [
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
                  50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      //splashColor: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "elevated button",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    MaterialButton(
                      splashColor: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "material button1",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    MaterialButton(
                      splashColor: Colors.yellow,
                      onPressed: () {},
                      child: const Text(
                        "material button2",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "feedback",
                  style: TextStyle(
                    fontSize: 15.0,
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
