// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// void main() {
//   runApp(
//     const ProviderScope(
//       child: ProviderPage(),
//     ),
//   );
// }

// final numberProvider = StateProvider<int>((ref) => 0);

// class ProviderPage extends ConsumerWidget {
//   const ProviderPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, watch) {
//     final provider = watch(stateProvider);
//     final counter = provider.state.toString();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Provider"),
//       ),
//       body: Center(child: TextWidet(counter)),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           provider.state++;
//         },
//       ),
//     );
//   }
// }
