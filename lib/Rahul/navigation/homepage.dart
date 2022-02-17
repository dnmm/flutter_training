import 'package:flutter/material.dart';
import 'firstpage.dart';
import 'secondpage.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  _NavigationsState createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/first': (context) => const Firstpage(),
      //   '/secound': (context) => const Secoundscreen(),
      // },
      title: "Navigation",
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
          "Navigation",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Home Page",
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
                    builder: (context) => const Firstpages(),
                  ),
                );
              },
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: const Text(
                "First Page",
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
                    builder: (context) => const Secondpage(),
                  ),
                );
              },
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: const Text(
                "Second Page",
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
