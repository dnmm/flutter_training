// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Tstyle extends StatelessWidget {
  const Tstyle({Key? key}) : super(key: key);

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
        body: const Center(
          child: Text(
            "rb  infotech private limited \n first program",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.yellow,
              //letterSpacing: 10.0,
              //wordSpacing: 20.0,
              //decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              fontFamily: "Times New Roman",
              //decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ),
      ),
    );
  }
}
