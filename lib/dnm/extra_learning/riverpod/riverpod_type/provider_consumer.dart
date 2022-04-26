// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// void main() {
//   runApp(
//     const ProviderScope(
//       child: ProviderPage(),
//     ),
//   );
// }

// final numberProvider = Provider<int>((ref) => 500);

// class ProviderPage extends ConsumerWidget {
//   const ProviderPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, watch) {
//     final number = watch(numberProvider).toString();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Provider"),
//       ),
//       body: Center(child: Text(number)),
//     );
//   }
// }
