import 'package:flutter/material.dart';

class W9D3NamedRoutes extends StatelessWidget {
  const W9D3NamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example', // Title of the app
      initialRoute: '/', // Initial route when the app starts
      routes: {
        // Define named routes and their associated widgets
        '/': (context) => const HomeScreen(), // Home screen route
        '/details': (context) => const DetailsScreen(), // Details screen route
        '/settings': (context) =>
            const SettingsScreen(), // Settings screen route
        '/add_to_cart': (context) =>
            const AddToCartScreen(), // Add to Cart screen route
        '/rk': (context) => const RKScreen(), // RK screen route
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the details screen using named route
                Navigator.pushNamed(context, '/details');
              },
              child: const Text('Go to Details'), // Button text
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigate to the settings screen using named route
            //     Navigator.pushNamed(context, '/settings');
            //   },
            //   child: const Text('Go to Settings'), // Button text
            // ),
          ],
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
            // Navigate to the Add to Cart screen using named route
            Navigator.pushNamed(context, '/add_to_cart');
          },
          child: const Text('Add to Cart'), // Button text
        ),
      ),
    );
  }
}

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('Add to Cart')), // App bar for the Add to Cart screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the home screen
            Navigator.pushNamed(context, '/settings');
          },
          child: const Text('Go Back'), // Button text
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Settings')), // App bar for the settings screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the rk screen using named route
            Navigator.pushNamed(context, '/rk');
          },
          child: const Text('Go to RK'), // Button text
        ),
      ),
    );
  }
}

class RKScreen extends StatelessWidget {
  const RKScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RKM')), // App bar for the RK screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.pop(context);
          },
          child: const Text('Go Back'), // Button text
        ),
      ),
    );
  }
}
