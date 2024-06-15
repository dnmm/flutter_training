import 'package:flutter/material.dart';


class ListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Example'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('John Doe'),
              subtitle: Text('john.doe@example.com'),
              onTap: () {
                // Action to perform when the item is tapped
                print('Tapped on John Doe');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Jane Smith'),
              subtitle: Text('jane.smith@example.com'),
              onTap: () {
                // Action to perform when the item is tapped
                print('Tapped on Jane Smith');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Alice Johnson'),
              subtitle: Text('alice.johnson@example.com'),
              onTap: () {
                // Action to perform when the item is tapped
                print('Tapped on Alice Johnson');
              },
            ),
          ],
        ),
      ),
    );
  }
}
