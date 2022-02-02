import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

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
                    child: ListTile(
                  title: Text("List Item 1"),
                )),
                Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text("List Item 1"),
                )),
                Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text("List Item 1"),
                )),
                Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text("List Item 1"),
                )),
                Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
              ],
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(100),
              //reverse: true,
              //physics: NeverScrollableScrollPhysics(),
              //addAutomaticKeepAlives: false,
              //cacheExtent: 100.0,
            ),
          )),
    );
  }
}
