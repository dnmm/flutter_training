import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    // print('width:$width and height:$height');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Layout widgets'),
      ),
      body: Column(children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('1'),
            // ignore: prefer_const_constructors
            Expanded(child: const Text('2', textAlign: TextAlign.center)),
            const Text('3'),
          ],
        ),
        Expanded(
          child: Center(
            child: Row(
              children: [
                const Text(
                  '4',
                  textAlign: TextAlign.start,
                ),
                Expanded(
                    child: Container(
                        child: const Text('5', textAlign: TextAlign.center))),
                const Text(
                  '6',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: BottomAppBar(
            child: Row(
              children: [
                const Text(
                  '4',
                  textAlign: TextAlign.start,
                ),
                Expanded(
                    child: Container(
                        child: const Text('5', textAlign: TextAlign.center))),
                const Text(
                  '6',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
