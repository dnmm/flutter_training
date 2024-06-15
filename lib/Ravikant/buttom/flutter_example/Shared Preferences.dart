// import 'package:flutter/material.dart'; // Import the material package
// import 'package:hive/hive.dart'; // Import the hive package for local database storage
// import 'package:path_provider/path_provider.dart' as path_provider; // Import the path_provider package for accessing device storage

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Initialize Flutter bindings
//   final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory(); // Get the application document directory
//   Hive.init(appDocumentDirectory.path); // Initialize Hive with the document directory path
//   runApp(const W11D2DatabaseInFlutter()); // Run the main application
// }

// class W11D2DatabaseInFlutter extends StatelessWidget {
//   const W11D2DatabaseInFlutter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hive Database Example'), // Set the app bar title
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () async {
//               final box = await Hive.openBox('myBox'); // Open or create a Hive box
//               await box.put('key', 'value'); // Add data to the box
//               final value = await box.get('key'); // Retrieve data from the box
//               debugPrint('Value from database: $value'); // Print the retrieved value
//             },
//             child: const Text('Save to Database'), // Button text
//           ),
//         ),
//       ),
//     );
//   }
// }
