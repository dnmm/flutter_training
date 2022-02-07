import 'package:flutter/material.dart';

class Bottomnavigatonbar1 extends StatefulWidget {
  const Bottomnavigatonbar1({Key? key}) : super(key: key);

  @override
  _Bottomnavigatonbar1State createState() => _Bottomnavigatonbar1State();
}

class _Bottomnavigatonbar1State extends State<Bottomnavigatonbar1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buttonnavigationbar',
      home: Bottomnavigatonbarpage(),
    );
  }
}

class Bottomnavigatonbarpage extends StatefulWidget {
  const Bottomnavigatonbarpage({Key? key}) : super(key: key);

  @override
  _BottomnavigatonbarpageState createState() => _BottomnavigatonbarpageState();
}

class _BottomnavigatonbarpageState extends State<Bottomnavigatonbarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Demo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
