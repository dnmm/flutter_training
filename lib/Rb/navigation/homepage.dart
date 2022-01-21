import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/firstscreen.dart';
import 'firstpage.dart';
import 'secoundpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => const Firstpage(),
        '/secound': (context) => const Secoundscreen(),
      },
      title: "navigation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "navigation",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Home page",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                //Navigator.push(context,'/first');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Firstpage(),
                  ),
                );
              },
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: const Text(
                "first page",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                //Navigator.push(context, '/secound');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Secoundscreen(),
                  ),
                );
              },
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: const Text(
                "secound page",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
