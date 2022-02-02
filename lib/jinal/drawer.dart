import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({Key? key}) : super(key: key);

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
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text('List Setting'),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                ListTile(
                  title: Text("Active Member"),
                  onTap: () => debugPrint("Active member selected"),
                ),
                ListTile(
                  title: Text('Lazy member'),
                  onTap: () => debugPrint("Lazy memeber selected"),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ));
  }
}
