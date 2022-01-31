import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
            //backgroundColor: Colors.amber,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: 'Name',
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
