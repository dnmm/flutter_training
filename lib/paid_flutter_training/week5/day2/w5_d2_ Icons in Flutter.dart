import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          size: 50,
          color: Colors.red,
        ),
        SizedBox(height: 20),
        Icon(
          Icons.star,
          size: 50,
          color: Colors.amber,
        ),
        SizedBox(height: 20),
        Icon(
          Icons.home,
          size: 50,
          color: Colors.blue,
        ),
        SizedBox(height: 20),
        Icon(
          Icons.account_circle,
          size: 50,
          color: Colors.green,
        ),
      ],
    );
  }
}
