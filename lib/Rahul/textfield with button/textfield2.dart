import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/button1.dart';

class Tiextfildwthbutton2 extends StatelessWidget {
  const Tiextfildwthbutton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter testing page",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "flutter testing page ",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                labelText: 'user id',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                prefixIcon: Icon(Icons.account_box),
                labelText: 'password',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.account_box)),
              maxLength: 10,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 16),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('click me'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 16),
            child: TextButton(
              onPressed: () {},
              child: const Text('registration'),
            ),
          ),
        ],
      ),
    );
  }
}
