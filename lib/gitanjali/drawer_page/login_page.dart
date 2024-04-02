import 'package:flutter/material.dart';
import 'package:path/path.dart';

class SimpleDrawar extends StatelessWidget {
  const SimpleDrawar({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Example';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Center(child: Text('My Drawar Page')),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              
              accountName: const Text(
                "Gitanjali Rai",
              ),
              accountEmail: const Text(
                "rgeet3918@gmail.com",
              ),
              currentAccountPicture: const CircleAvatar(
                child: Text("Files"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[],
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: const Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.clean_hands),
              title: const Text('Clean'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash_outlined),
              title: const Text('Trash'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: const Text('Help & feedback'),
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
