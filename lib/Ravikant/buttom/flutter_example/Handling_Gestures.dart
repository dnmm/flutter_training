import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ravikant/buttom/flutter_example/redio.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Handling_Gestures(),
    );
  }
}

class Handling_Gestures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handling Gestures'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("hello ravi ");
              },
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RadioButtonrk(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
