import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyInitStateDispose extends StatefulWidget {
  MyInitStateDispose({Key? key, this.userName = "My Name"}) : super(key: key);

  String? userName;

  @override
  State<MyInitStateDispose> createState() => _MyInitStateDisposeState();
}

class _MyInitStateDisposeState extends State<MyInitStateDispose> {
  @override
  String? name;

  void initState() {
    super.initState();
    print('Init State');
    this.name = widget.userName;
  }

  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return MaterialApp(
      title: 'Init State $name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Auto Text Size Adjust',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: const Center(
          child: AutoSizeText(
            'This is Auto My Text Size Adjust in two line',
            style: TextStyle(fontSize: 50),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
