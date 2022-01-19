// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const Sbutton());
}

class Sbutton extends StatelessWidget {
  const Sbutton({Key? key}) : super(key: key);

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(200.0),
              child: MaterialButton(
                //color: Colors.red,
                splashColor: Colors.cyan,
                onPressed: () {},
                //we show here in child whitch is display
                child: const Text(
                  "submit",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    //backgroundColor: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
