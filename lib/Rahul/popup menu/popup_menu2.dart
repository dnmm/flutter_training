import 'package:flutter/material.dart';

class Popumenu2 extends StatefulWidget {
  const Popumenu2({Key? key}) : super(key: key);
  @override
  _MyState createState() {
    return _MyState();
  }
}

class _MyState extends State<Popumenu2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Flutter Popup Menu Button"),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Edit"),
                          onTap: () {},
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                          ),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Cut"),
                          value: 3,
                        ),
                        PopupMenuItem(
                            child: MaterialButton(
                          onPressed: () {},
                          child: Text('Payment'),
                        )),
                        PopupMenuItem(
                            child: IconButton(
                          icon: Icon(
                            // Icons.add_box,
                            Icons.add_call,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        )),
                      ])
            ],
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PopupMenuButton(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text("Menu"),
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Edit"),
                          onTap: () {},
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                          ),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Cut"),
                          value: 3,
                        ),
                        PopupMenuItem(
                            child: MaterialButton(
                          onPressed: () {},
                          child: Text('Payment'),
                        )),
                        PopupMenuItem(
                            child: IconButton(
                          icon: Icon(
                            // Icons.add_box,
                            Icons.add_call,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        )),
                      ]),
              //secound popup menu
              PopupMenuButton(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text("Edit"),
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Edit"),
                          onTap: () {},
                          value: 1,
                        ),
                        PopupMenuItem(
                            child: IconButton(
                          icon: Icon(
                            // Icons.add_box,
                            Icons.add_call,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        )),
                      ]),
            ],
          )),
        ));
  }
}
