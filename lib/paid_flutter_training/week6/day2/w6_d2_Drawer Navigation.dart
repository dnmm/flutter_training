import 'package:flutter/material.dart';

void main() {
  runApp(DrawerNavigation());
}

class DrawerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem(icon: Icons.home, title: 'Home'),
    DrawerItem(icon: Icons.settings, title: 'Settings'),
    DrawerItem(icon: Icons.account_circle, title: 'Profile'),
    DrawerItem(icon: Icons.notifications, title: 'Notifications'),
  ];

  @override
  Widget build(BuildContext context) {
    // Sort drawer items alphabetically by title
    drawerItems.sort((a, b) => a.title.compareTo(b.title));

    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navigation Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: drawerItems.map((item) {
            return ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                // Perform navigation based on the selected item
                Navigator.pop(context);
                // Handle navigation logic here
              },
            );
          }).toList(),
        ),
      ),
      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class DrawerItem {
  final IconData icon;
  final String title;

  DrawerItem({required this.icon, required this.title});
}
