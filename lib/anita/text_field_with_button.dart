import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/button1.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter testing page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Login ",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      drawer: const Login(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.account_box)
                prefixIcon: Icon(Icons.person),
                labelText: 'User id',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.security),
                hintText: 'Create your password',
                labelText: ' Password',
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.account_box)),
              maxLength: 10,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Forget Password',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
