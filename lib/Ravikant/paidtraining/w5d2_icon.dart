import 'package:flutter/material.dart';

class W5D2IconApp extends StatelessWidget {
  const W5D2IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(
              255, 216, 215, 147), // Setting app bar background color.
          title: const Center(
              child: Text('Icon Example')), // Setting app bar title.
        ),
        body:
            const W5D2IconExample(), // Displaying W5D2IconExample widget in the body.
      ),
    );
  }
}

class W5D2IconExample extends StatelessWidget {
  const W5D2IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.money,
              size: 50,
              color: Color.fromARGB(
                  255, 60, 236, 113), // Setting color for the favorite icon.
            ),
            SizedBox(height: 20),
            Icon(
              Icons.balance,
              size: 50,
              color: Color.fromARGB(
                  255, 218, 255, 7), // Setting color for the star icon.
            ),
            SizedBox(height: 20),
            Icon(
              Icons.alarm,
              size: 50,
              color: Colors.blue, // Setting color for the home icon.
            ),
            SizedBox(height: 20),
            Icon(
              Icons.location_city,
              size: 50,
              color: Colors.green, // Setting color for the account circle icon.
            ),
          ],
        ),
      ),
    );
  }
}
