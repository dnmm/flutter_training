import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Anita Yadav",
              ),
              accountEmail: const Text(
                "hanniy36@gmail.com",
              ),
              currentAccountPicture: const CircleAvatar(
                child: Icon(Icons.account_box),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  child: Text(
                    "A",
                  ),
                  backgroundColor: Colors.white,
                )
              ],
              onDetailsPressed: () {},
            ),
            ListTile(
              title: const Text('Email'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Call'),
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
