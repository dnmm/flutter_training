import 'package:flutter/material.dart';

class W9D2NavigationAndRoutes extends StatelessWidget {
  const W9D2NavigationAndRoutes({super.key}); // Corrected key syntax

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define initial route
      initialRoute: '/',
      // Define routes
      routes: {
        '/': (context) =>
            const HomeScreen(), // Define the initial route to the HomeScreen
        '/second': (context) =>
            const SecondScreen(), // Define the route to the SecondScreen
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          // Navigate to SecondScreen
          onPressed: () {
            Navigator.pushNamed(context,
                '/second'); // Navigate to the '/second' route when the button is pressed
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          // Navigate back to HomeScreen
          onPressed: () {
            Navigator.pop(
                context); // Navigate back to the previous route when the button is pressed
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
