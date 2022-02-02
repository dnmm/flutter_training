import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  const Float({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
            backgroundColor: Colors.red.shade600,
            //List
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => debugPrint("item searched"),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("Tapped"),
            backgroundColor: Colors.amber,
            child: Icon(Icons.search),
            tooltip: 'Search here',
          ),
        ));
  }
}
