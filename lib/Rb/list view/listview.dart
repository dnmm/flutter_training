import 'package:flutter/material.dart';

class Simplelistview extends StatelessWidget {
  const Simplelistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        home: Simplelistviewpage());
  }
}

class Simplelistviewpage extends StatefulWidget {
  Simplelistviewpage({Key? key}) : super(key: key);
  @override
  _SimplelistviewpageState createState() => _SimplelistviewpageState();
}

class _SimplelistviewpageState extends State<Simplelistviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("gridview page"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
              title: Text("python course"),
            )),
            Card(
              child: ListTile(
                title: Text("flutter course"),
              ),
            ),
            Card(
                child: ListTile(
              title: Text("C curse"),
            )),
            Card(
                child: ListTile(
              title: Text("php curse"),
            )),
          ],
          shrinkWrap: true,
        ));
  }
}
