import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String name, email, phone;
  WelcomePage({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name : ${name}'),
          Text('Email : ${email}'),
          Text('Phone : ${phone}')
        ],
      ),
    ));
  }
}
