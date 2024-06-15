import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ravikant/buttom/flutter_example/home%20page%20college%20app%20.dart';



class collegeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School ID Card App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page after successful login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage1()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
