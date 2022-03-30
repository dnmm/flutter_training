import 'package:flutter/material.dart';

class Btnnavibar1 extends StatefulWidget {
  const Btnnavibar1({Key? key}) : super(key: key);

  @override
  _Btnnavibar1State createState() => _Btnnavibar1State();
}

class _Btnnavibar1State extends State<Btnnavibar1> {
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
            backgroundColor: Colors.red,
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
