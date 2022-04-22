import 'dart:math';

import 'package:flutter/material.dart';

// void main() {
//   runApp(const ForEachRandomColor());
// }

class ForEachRandomColor extends StatelessWidget {
  const ForEachRandomColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Friend> myfriends = [
    Friend(name: "Test", color: 0xFFFFFFFF),
    Friend(name: "Test1", color: 0xF99FFFFF),
    Friend(name: "Test2", color: 0xF8FFFFFF),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Array Methode: .forEach()",
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.color_lens),
          onPressed: () {
            myfriends.forEach((friend) {
              friend.color = (Random().nextDouble() * 0xFFFFFFFF).toInt();
            });
            setState(() {});
          }),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext contex, int index) => Divider(),
              itemCount: myfriends.length,
              itemBuilder: (context, int index) {
                return Container(
                  color: Color(myfriends[index].color),
                  child: ListTile(
                    title: Text(
                      myfriends[index].name,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Friend {
  String name;
  int color;
  Friend({required this.name, required this.color});
}
