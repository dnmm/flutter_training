import 'package:flutter/material.dart';

class SimpleDrawar extends StatelessWidget {
  const SimpleDrawar({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Example';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyDrawarPage(title: appTitle),
    );
  }
}

class MyDrawarPage extends StatelessWidget {
  const MyDrawarPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Drawar Page'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        //space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "My Flutter Drawar Page",
              ),
              accountEmail: const Text(
                "dnm.dpm@gmail.com",
              ),
              currentAccountPicture: const CircleAvatar(
                child: Text(
                  "Drawar",
                ),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  child: Text(
                    "p",
                  ),
                  backgroundColor: Colors.white,
                )
              ],
              onDetailsPressed: () {},
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
