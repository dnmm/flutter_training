// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to material app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to material app'),
        ),
        body: const Center(
          child: Text('Welcome to material app'),
        ),
      ),
    );
  }
}
