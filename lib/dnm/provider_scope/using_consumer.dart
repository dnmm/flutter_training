// // dependencies: flutter_riverpod: ^1.0.0

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class UsingConsumer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // 1. Add a Consumer
//         child: Consumer(
//           // 2. specify the builder and obtain a WidgetRef
//           builder: (_, WidgetRef ref, __) {
//             // 3. use ref.watch() to get the value of the provider
//             final value = ref.watch(valueProvider);
//             return Text(
//               'Value: $value',
//               style: Theme.of(context).textTheme.headline4,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
