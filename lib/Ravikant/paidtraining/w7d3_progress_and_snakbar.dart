import 'package:flutter/material.dart';

// class W7D3ProgressAndSnackBar extends StatelessWidget {
//   const W7D3ProgressAndSnackBar({
//     super.key, // Defining a constant constructor for the W7D3ProgressAndSnackBar widget
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Defining the MaterialApp widget
//       debugShowCheckedModeBanner: false, // Disabling the debug banner
//       title:
//           'Progress Bars and Snackbar Example', // Setting the title of the app
//       theme: ThemeData(
//         // Defining the theme of the app
//         primarySwatch: Colors.blue, // Setting the primary color swatch to blue
//       ),
//       home:
//           const MyHomePage(), // Setting the home page of the app to MyHomePage widget
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key, // Defining a constant constructor for the MyHomePage widget
//   });

//   @override
//   MyHomePageState createState() =>
//       MyHomePageState(); // Creating state for the MyHomePage widget
// }

// class MyHomePageState extends State<MyHomePage> {
//   double _progressValue = 0.0; // Declaring a variable to hold progress value

//   void _updateProgress() {
//     // Method to update progress value
//     setState(() {
//       // Setting state to update UI
//       _progressValue += 0.2; // Incrementing progress value
//       if (_progressValue >= 1.0) {
//         // Checking if progress value reaches maximum
//         _progressValue = 0.0; // Resetting progress value if it reaches maximum
//       }
//     });

//     // Show snackbar when progress is updated
//     ScaffoldMessenger.of(context).showSnackBar(
//       // Showing a snackbar with a message
//       const SnackBar(
//         content: Text('Progress Updated'), // Setting snackbar content
//         duration: Duration(seconds: 1), // Setting snackbar duration
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Building the scaffold widget
//       appBar: AppBar(
//         // Defining the app bar
//         backgroundColor: Color.fromARGB(
//             255, 18, 155, 173), // Setting app bar background color to red
//         title: const Center(
//             child: Text(
//                 ' This is a Progress Bars and Snackbar Example')), // Setting app bar title
//       ),
//       body: Center(
//         // Centering the content in the scaffold body
//         child: Column(
//           // Creating a column to stack widgets vertically
//           mainAxisAlignment:
//               MainAxisAlignment.center, // Aligning column content to center
//           children: <Widget>[
//             LinearProgressIndicator(
//               // Adding a linear progress indicator widget
//               value: _progressValue, // Setting progress value
//               backgroundColor:
//                   Colors.grey[300], // Setting background color for progress bar
//               valueColor: const AlwaysStoppedAnimation<Color>(
//                   Color.fromARGB(255, 33, 243, 96)), // Setting progress color
//             ),
//             const SizedBox(height: 30.0), // Adding a sized box for spacing
//             ElevatedButton(
//               // Adding an elevated button widget
//               onPressed: _updateProgress, // Setting button onPressed callback
//               child: const Text(
//                   'Update Progress and Show Snackbar'), // Setting button text
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



class snakbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Hello, Snackbar!'),
                  duration: Duration(seconds: 2), // Snackbar duration
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Perform undo operation
                    },
                  ),
                ),
              );
            },
            child: Text('Show Snackbar'),
          ),
        ),
      ),
    );
  }
}