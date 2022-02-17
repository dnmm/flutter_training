import 'package:flutter/material.dart';

class Networkimages extends StatelessWidget {
  const Networkimages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: "flutter testing page",
      home: const Nhomepage(),
    );
  }
}

class Nhomepage extends StatefulWidget {
  const Nhomepage({Key? key}) : super(key: key);

  @override
  _NhomepageState createState() => _NhomepageState();
}

class _NhomepageState extends State<Nhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Image.network(src)
            child: Image.network(
                "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          )
        ]),
      ),
    );
  }
}
