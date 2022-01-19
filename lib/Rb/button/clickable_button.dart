// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const Firstbuto());
}

class Firstbuto extends StatelessWidget {
  const Firstbuto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to rbinfotech.com',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'rb infotech pvt',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            // focusColor: Colors.red,
            // hoverColor: Colors.green,
            // splashColor: Colors.blue,
            onPressed: () {},
            child: const Text('click me'),
          ),
        ),
      ),
    );
  }
}
