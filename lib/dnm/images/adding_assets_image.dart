import 'package:flutter/material.dart';

class MyImagesPage extends StatelessWidget {
  const MyImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Images page',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Multiple Image wit Resize",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  //fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                  height: 100,
                  width: 400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
