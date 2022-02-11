import 'package:flutter/material.dart';
import 'package:flutter_training/jinal/navigation/firstpage.dart';
//import 'package:flutter_application_1/jinal/navigation/secoundpage.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}
