import 'package:flutter/material.dart';

class ProfessionalWelcomePage extends StatelessWidget {
  const ProfessionalWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://your-image-url.com/welcome_background.jpg', // Replace with a high-quality network image URL
            fit: BoxFit.cover,
          ),
          // Overlay for better text contrast
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo or Main Welcome Image
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://your-image-url.com/logo.png', // Replace with your logo or another image URL
                  ),
                ),
                const SizedBox(height: 20),
                // Welcome Text
                const Text(
                  'Welcome to Our App!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Your journey to excellence starts here.\nLet’s get started!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                // Get Started Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the next page
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfessionalWelcomePage(),
  ));
}
