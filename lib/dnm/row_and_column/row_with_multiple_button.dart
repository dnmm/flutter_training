import 'package:flutter/material.dart';

class MyRowWithMultipleButton extends StatelessWidget {
  const MyRowWithMultipleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiple Row",
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
                  "First Line With Text",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      //splashColor: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "This is Elevated Button",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    MaterialButton(
                      splashColor: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "This is Material Button",
                        style: TextStyle(
                          fontSize: 16.0,
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
                  "This is Text Button",
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
