import 'package:flutter/material.dart';

class ContainerButtonScroll extends StatelessWidget {
  const ContainerButtonScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Button Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome Container Button Scroll'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(100.0),
            padding: const EdgeInsets.all(10.0),
            width: 300.0,
            height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 8.0),
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30.0)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),

            //alignment: Alignment(0.0, -.8), // for manual top
          ),
        ),
      ),
    );
  }
}
