// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Stext extends StatelessWidget {
  const Stext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to rbinfotech.com',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('rb infotech pvt'),
        ),
        body: const Center(
          child: Text('rb infotech first program'),
        ),
      ),
    );
  }
}
