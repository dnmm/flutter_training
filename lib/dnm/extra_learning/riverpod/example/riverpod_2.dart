import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: MyRiverPod(),
  ));
}

class MyRiverPod extends StatefulWidget {
  const MyRiverPod({Key? key}) : super(key: key);

  @override
  State<MyRiverPod> createState() => _MyRiverPodState();
}

class _MyRiverPodState extends State<MyRiverPod> {
  final valueProvider = Provider<int>((ref) {
    return 36;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Text(
          'Some text here 👍',
          style: Theme.of(context).textTheme.headline4,
        );
      }),
    );
  }
}
