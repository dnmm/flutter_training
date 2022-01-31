import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Expanded(
            child: Text(
          "1",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        )),
        const Expanded(
            child: Text(
          "2",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        )),
        const Expanded(
            child: Text(
          "3",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        )),
        const Expanded(
            child: Text(
          "4",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50),
        )),
      ],
    );
  }
}
