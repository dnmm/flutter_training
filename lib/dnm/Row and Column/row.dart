import 'package:flutter/material.dart';

class MyMultipleRow extends StatelessWidget {
  const MyMultipleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiple Row",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Multiple Item in Row",
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
                  50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      //splashColor: Colors.green,
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
                          color: Colors.red,
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
