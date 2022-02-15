import 'package:flutter/material.dart';

class MultipleContoner extends StatelessWidget {
  const MultipleContoner({Key? key}) : super(key: key);

  get body => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Text Button',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome Multiple Container'),
          ),
          body: Column(
            children: [
              Row(children: [
                ContainerAll(),
                ContainerAll(),
                ContainerAll(),
                ContainerAll(),
              ]),
              Column(children: [
                ContainerAll(),
                ContainerAll(),
                ContainerAll(),
                ContainerAll(),
              ]),
            ],
          ),
        ));
  }
}

class ContainerAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      width: 80.0,
      height: 90.0,
    );
  }
}
