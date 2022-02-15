import 'package:flutter/material.dart';
import 'drawer.dart';
import 'signup_page.dart';

class LogiPage extends StatelessWidget {
  const LogiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Welcome to Login Page";
    return MaterialApp(
      title: appTitle,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                labelText: 'User id',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              ),
            ),
          ),
          const Padding(
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
            padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyDrawaApp(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 16),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignupPage(),
                  ),
                );
              },
              child: const Text('New Registration'),
            ),
          ),
        ],
      ),
    );
  }
}
