// dependencies: flutter_riverpod: ^1.0.0

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  final counterStateProvider = StateProvider<int>((ref) {
    return 0;
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. watch the counterStateProvider
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      body: Center(
        child: Text(
          // 2. use the counter value
          'Value: $counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
