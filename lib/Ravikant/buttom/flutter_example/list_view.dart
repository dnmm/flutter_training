import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My List View",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My List View Page",
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Card(
                margin: EdgeInsets.all(10), // Add margin
                elevation: 5, // Add shadow
                clipBehavior: Clip.antiAlias, // Clip behavior
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  // Custom shape
                ),
                child: ListTile(
                  title: Text("List Item 1"),
                  subtitle: Text("1"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10), // Add margin
                elevation: 5, // Add shadow
                clipBehavior: Clip.antiAlias, // Clip behavior
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Custom shape
                ),
                child: ListTile(
                  title: Text("List Item 2"),
                  subtitle: Text("2"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10), // Add margin
                elevation: 5, // Add shadow
                clipBehavior: Clip.antiAlias, // Clip behavior
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Custom shape
                ),
                child: ListTile(
                  title: Text("List Item 3"),
                  subtitle: Text("3"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
