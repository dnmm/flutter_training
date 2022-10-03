import 'package:flutter/material.dart';

class BuilderGridViewWidgets extends StatelessWidget {
  const BuilderGridViewWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Builder Grid',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Builder Grid',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow,
                ),
              ),
            ),
            body: GridView.count(
              primary: true,
              padding: const EdgeInsets.all(40),
              crossAxisSpacing: 30,
              mainAxisSpacing: 50,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.red[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.red[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Sound of screams but the'),
                  color: Colors.red[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Who scream'),
                  color: Colors.red[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  color: Colors.red[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  color: Colors.red[600],
                ),
              ],
            )));
  }
}
