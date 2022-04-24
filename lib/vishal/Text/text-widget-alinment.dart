// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter testing page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter testing page',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "flutter testing page private limited first program",
            style: TextStyle(
              fontSize: 40.0,
            ),
            textAlign: TextAlign.center,
            //textAlign: TextAlign.left,
            //textDirection: TextDirection.ltr,
            //textDirection: TextDirection.rtl,
            //softwrap take boolean function
            //if true then it take space according him
            //softWrap: false,
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
