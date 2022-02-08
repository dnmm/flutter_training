import 'package:flutter/material.dart';
import 'package:flutter_application_1/jinal/navigation/secoundpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstpage> {
  //String _email;
  //String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Column(children: [
          Text("Login_Page"),
          MaterialButton(
              child: Text("Create Account"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Secoundscreen(),
                ));
              })
        ]),
      ),
    );
  }
}
