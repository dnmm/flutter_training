import 'package:flutter/material.dart';

class MyElevatedButtonR extends StatelessWidget {
  const MyElevatedButtonR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacing = 10.0;
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Elevated Button rk '),
          ),
          body: Center(
            child: Wrap(
              // us can use horizontal or vertical
              direction: Axis.vertical,
              spacing: spacing,
              children: [
                const Text("rk_1234"),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 169, 174, 189),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color.fromARGB(255, 42, 82, 190)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 185, 190, 204),
                    ),
                  ),
                  child: const Text('Signup',
                      style:
                          TextStyle(color: Color.fromARGB(255, 42, 82, 190))),
                ),
              ],
            ),
          ),
        ));
  }
}
