import 'package:flutter/material.dart';

class W9D1NavigationConcepts extends StatelessWidget {
  const W9D1NavigationConcepts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      initialRoute: '/', // Initial route of the app
      routes: {
        '/': (context) => const HomeScreen(), // Route for the home screen
        '/details': (context) =>
            const DetailsScreen(), // Route for the details screen
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')), // App bar for the home screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
                context, '/details'); // Navigate to details screen
          },
          child: const Text('Go to Details'), // Button text
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Details')), // App bar for the details screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous screen
          },
          child: const Text('Go Back'), // Button text
        ),
      ),
    );
  }
}
