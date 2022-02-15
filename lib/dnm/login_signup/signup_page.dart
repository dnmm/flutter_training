import 'package:flutter/material.dart';
import 'drawer.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Welcome to Signup Page';
    return MaterialApp(
      title: appTitle,
      home: MySingUpPage(),
    );
  }
}

class MySingUpPage extends StatefulWidget {
  const MySingUpPage({Key? key}) : super(key: key);

  @override
  _MySingUpPageState createState() => _MySingUpPageState();
}

class _MySingUpPageState extends State<MySingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome to Login Page",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                labelText: 'Email ID',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                prefixIcon: Icon(Icons.contact_mail),
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                prefixIcon: Icon(Icons.security),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                prefixIcon: Icon(Icons.security),
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyDrawaApp(),
                  ),
                );
              },
              child: const Text('Signup'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 16),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LogiPage(),
                  ),
                );
              },
              child: const Text('Already Registar'),
            ),
          ),
        ],
      ),
    );
  }
}
