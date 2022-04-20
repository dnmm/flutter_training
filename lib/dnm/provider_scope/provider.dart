// dependencies: flutter_riverpod: ^1.0.0

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/extra_learning/riverpod/random_number.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderScope extends StatelessWidget {
  ProviderScope({Key? key, RandomNumberGenerator child}) : super(key: key);

  final valueProvider = Provider<int>((ref) {
    return 36;
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to tex'),
          ),
          body: Wrap(
            spacing: 20,
            children: const [
              Text("Text Here 1"),
            ],
          ),
        ));
  }
}
