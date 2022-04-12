import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class counter extends StatelessWidget {
  const counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

/// Providers are declared globally and specify how to create a state
final counterProvider = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Consumer(builder: (context, ref, _) {
          final count = ref.watch(counterProvider.state).state;
          return Text('$count');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(counterProvider.state).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
