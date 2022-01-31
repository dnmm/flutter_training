import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'One',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        ),
        const Text(
          'Two',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        ),
        const Text(
          'Three',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        ),
        const Text(
          'Four',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
