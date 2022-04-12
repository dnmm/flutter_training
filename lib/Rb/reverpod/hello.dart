import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final helloWorldProvider = Provider((_) => 'Hello world');

class MyAppreverpod extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(helloWorldProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: () => {value = "1"}, child: const Text("change")),
              Text(value),
            ],
          ),
        ),
      ),
    );
  }
}
