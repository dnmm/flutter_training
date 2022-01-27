// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Textbutt extends StatelessWidget {
  const Textbutt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter testing page',
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 3),
                child: Text(
                  "this is a text widget",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 3.2),
                child: MaterialButton(
                  splashColor: Colors.cyan,
                  padding: const EdgeInsets.all(30.0),
                  onPressed: () {},
                  child: const Text(
                    "TEXT BUTTON 1",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 3.4),
                child: Text(
                  "this is a text widget 2",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 3.6),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "TEXT BUTTON 2",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
