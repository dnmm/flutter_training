import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ravikant/buttom/flutter_example/card%20id%20app%20.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the School ID Card App'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the Add Card page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddCardPage()),
            );
          },
          child: Text('Add Card'),
        ),
      ),
    );
  }
}
