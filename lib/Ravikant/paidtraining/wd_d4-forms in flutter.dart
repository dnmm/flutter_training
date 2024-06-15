import 'package:flutter/material.dart';

class w4d4forms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Forms Example'),
          ),
          body: Form(
              child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: ' Enter your Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: ' Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: ' Enter yourPassword',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ))),
    );
  }
}
