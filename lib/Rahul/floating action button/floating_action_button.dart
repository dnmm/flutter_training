import 'package:flutter/material.dart';

class Floatingactionbutton extends StatefulWidget {
  const Floatingactionbutton({Key? key}) : super(key: key);

  @override
  _FloatingactionbuttonState createState() => _FloatingactionbuttonState();
}

class _FloatingactionbuttonState extends State<Floatingactionbutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter example',
      home: Floatingactionpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Floatingactionpage extends StatefulWidget {
  const Floatingactionpage({Key? key}) : super(key: key);

  @override
  _FloatingactionpageState createState() => _FloatingactionpageState();
}

class _FloatingactionpageState extends State<Floatingactionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('floating action button example'),
        ),

        //floating action button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add_task),
          onPressed: () => debugPrint("floating button pressed"),
        ),
        //add drawer
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text(
                  "flutter testing page",
                ),
                accountEmail: const Text(
                  "707abcd@gmail.com",
                ),
                currentAccountPicture: const CircleAvatar(
                  child: Text(
                    "R",
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
                //dropdown button
                onDetailsPressed: () {},
              ),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text(
                  "login",
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text(
                  "contect",
                ),
                onTap: () {},
              ),
              const Divider()
            ],
          ),
        ),
        body: Center(
            child: Text(
          'Add Items ',
          style: TextStyle(
            fontSize: 30,
          ),
        )));
  }
}
