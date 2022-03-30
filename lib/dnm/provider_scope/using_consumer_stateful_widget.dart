// // dependencies: flutter_riverpod: ^1.0.0

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// // 1. Extend [ConsumerStatefulWidget]
// class MyHomePage extends ConsumerStatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// // 2. Extend [ConsumerState]
// class _MyHomePageState extends ConsumerState<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     // 3. use ref.read() in the widget life-cycle methods
//     final value = ref.read(valueProvider);
//     print(value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // 3. use ref.watch() to get the value of the provider
//     final value = ref.watch(valueProvider);
//     return Scaffold(
//       body: Center(
//         child: Text(
//           'Value: $value',
//           style: Theme.of(context).textTheme.headline4,
//         ),
//       ),
//     );
//   }
// }
