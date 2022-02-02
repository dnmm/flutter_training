import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

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
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: () => debugPrint("Member added"),
              ),
              IconButton(
                icon: Icon(Icons.add_call),
                onPressed: () => debugPrint("Select member for call"),
              )
            ],
          ),
          body: const Material(
            color: Colors.amberAccent,
            child: Center(
              child: Text("Hello world",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50.0)),
            ),
          ),
        ));
  }
}
