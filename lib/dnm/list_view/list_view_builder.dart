import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({Key? key}) : super(key: key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[800, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My List View Builder",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "My List View Page Builder",
              ),
            ),
            body: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                })));
  }
}
