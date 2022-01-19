import 'package:flutter/material.dart';

void main() => runApp(const Buttwithtext());

class Buttwithtext extends StatelessWidget {
  const Buttwithtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'rb infotech pvt';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter user id',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your address',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('click me'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 16),
          child: TextButton(
            onPressed: () {},
            child: const Text('forget password'),
          ),
        ),
      ],
    );
  }
}
