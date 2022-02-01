// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Scrollpage extends StatefulWidget {
  const Scrollpage({Key? key}) : super(key: key);

  @override
  _ScrollpageState createState() => _ScrollpageState();
}

class _ScrollpageState extends State<Scrollpage> {
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
        //color: Colors.blue,
        child: Center(
          child: Image.network(
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
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
