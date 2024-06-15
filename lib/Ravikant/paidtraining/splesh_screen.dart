import 'package:flutter/material.dart';



class W10D2SplashScreen extends StatelessWidget {
  const W10D2SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(), // Show splash screen first
      routes: {
        '/home': (context) => const HomeScreen(), // Route to the main screen
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to the home screen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Example of a simple splash screen widget
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
