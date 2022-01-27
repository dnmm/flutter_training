import 'package:flutter/material.dart';

class MyMultipleColumn extends StatelessWidget {
  const MyMultipleColumn({Key? key}) : super(key: key);

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
              TextButton(
                onPressed: () {},
                child: const Text(
                  "This is Text Button",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child:
                        Text('One Row First Text', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('One Row Second Text',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
