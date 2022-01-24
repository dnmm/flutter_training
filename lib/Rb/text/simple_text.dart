// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Stext extends StatelessWidget {
  const Stext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter testing page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter testing page'),
        ),
        body: const Center(
          child: Text('flutter testing page first program'),
        ),
      ),
    );
  }
}
