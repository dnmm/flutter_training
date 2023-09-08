import 'package:flutter/material.dart';

void main() {
  runApp(NamePositionalParameter());
}

class NamePositionalParameter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Friend> myFriends = [
    Friend(name: 'mohan', color: 0xff738f66),
    Friend(name: 'mohan1', color: 0xFFFF0000),
    Friend(name: 'mohan2', color: 0xFFFFFF00),
    Friend(name: 'mohan3', color: 0xFFFFA500),
    Friend(name: 'mohan4', color: 0xFF800080)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Array Method : .forEach()',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hello word');
        },
        child: const Icon(Icons.color_lens),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Color(myFriends[index].color),
                    child: ListTile(
                      title: Text(
                        myFriends[index].name,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: myFriends.length),
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
