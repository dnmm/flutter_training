import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyAppBar extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //we can use container or other widigent in place of matirial app
    return MaterialApp(
      title: "My Flutter App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Welcome in AppBar"),
        // centerTitle: false,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print("Setting");
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search");
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("Menu");
            },
          ),
        ],
      ),
    );
  }
}
