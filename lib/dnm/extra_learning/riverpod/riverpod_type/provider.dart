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

// class ProviderPage extends StatelessWidget {
//   const ProviderPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Provider"),
//       ),
//       body: Center(
//         child: Consumer(builder: (context, watch, child) {
//           final number = watch(numberProvider).toString();
//           return TextWidget(number);
//         }),
//       ),
//     );
//   }
// }
