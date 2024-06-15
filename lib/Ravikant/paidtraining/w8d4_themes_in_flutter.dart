import 'package:flutter/material.dart';

class W8D4Themes extends StatelessWidget {
  const W8D4Themes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Example',
      theme: ThemeData(
        // primarySwatch: Colors.red, // Primary color swatch for the app
        // accentColor: Colors.green, // Accent color for buttons, etc. (optional)
        fontFamily: 'Robot', // Custom font family for the app
        textTheme: const TextTheme(
          // Custom text styles for the app
          displayLarge: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold), // Custom display large text style
          bodyLarge: TextStyle(
              fontSize: 16.0,
              color: Colors.black87), // Custom body large text style
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Center(child: Text('Theme Example')), // App bar title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Custom Font and Text Styles',
              // Text with custom display large style
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 20.0),
            Text(
              'Body Text with Custom Style', // Text with custom body large style
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                  'Button with Accent Color'), // Elevated button with accent color
            ),
          ],
        ),
      ),
    );
  }
}
