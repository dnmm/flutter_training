import 'package:flutter/material.dart';
import 'first_page.dart';
import 'secound_page.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<MyNavigation> {
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
      body: Center(
        child: Column(
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
                      builder: (context) => MyFirstPage(),
                    ),
                  );
                },
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
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
                      builder: (context) => const SecoundScreen(),
                    ),
                  );
                },
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
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
      ),
    );
  }
}
