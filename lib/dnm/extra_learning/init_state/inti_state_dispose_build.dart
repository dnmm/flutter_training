import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyInitStateDispose extends StatelessWidget {
  const MyInitStateDispose({Key? key}) : super(key: key);

  @override
  Void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Text Size Adjust',
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
