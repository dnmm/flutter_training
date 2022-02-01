// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class simplescrollpage extends StatefulWidget {
  const simplescrollpage({Key? key}) : super(key: key);

  @override
  _simplescrollpageState createState() => _simplescrollpageState();
}

class _simplescrollpageState extends State<simplescrollpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scrollhomme());
  }
}

class Scrollhomme extends StatefulWidget {
  const Scrollhomme({Key? key}) : super(key: key);

  @override
  _ScrollhommeState createState() => _ScrollhommeState();
}

class _ScrollhommeState extends State<Scrollhomme> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    List<Widget> pages = [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: const Text(
          "its page 1",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: const Text(
          "its page 2",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: const Text(
          "its page 3",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
        child: const Text(
          "its page 4",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.brown,
        child: const Text(
          "its page 5",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    ];
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: pages,
        ),
      ),
    );
  }
}
