import 'package:flutter/material.dart';

class MultipleIcon extends StatelessWidget {
  const MultipleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Multiple Icon',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Multiple Icon'),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: 18.0,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const <Widget>[
                  Icon(
                    Icons.contact_mail,
                    color: Colors.pink,
                    size: 10.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.mail_outlined,
                    color: Colors.green,
                    size: 60.0,
                  ),
                  Icon(
                    Icons.phone_android,
                    color: Colors.blue,
                    size: 60.0,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
