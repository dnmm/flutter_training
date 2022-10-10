import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  String name, email, phoneNumber;
  WelcomePage(
      {required this.name, required this.email, required this.phoneNumber});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wecome Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name : ${widget.name}'),
            Text('Email : ${widget.email}'),
            Text('PhoneNumber : ${widget.phoneNumber}'),
          ],
        ),
      ),
    );
  }
}
