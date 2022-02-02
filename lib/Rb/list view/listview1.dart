import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  const Listview1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Listviewpage());
  }
}

class Listviewpage extends StatefulWidget {
  Listviewpage({Key? key}) : super(key: key);
  @override
  _ListviewpageState createState() => _ListviewpageState();
}

class _ListviewpageState extends State<Listviewpage> {
  List<String> images = [
    "assets/images/a.png",
    "assets/images/logo.png",
    "assets/images/a.png",
    "assets/images/logo.png",
    "assets/images/a.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter ListView"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          //shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
