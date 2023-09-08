import 'package:flutter/material.dart';

class Popumenu extends StatefulWidget {
  const Popumenu({Key? key}) : super(key: key);
  @override
  _MyState createState() {
    return _MyState();
  }
}

class _MyState extends State<Popumenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Popup Menu Button"),
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
                            Icons.person,
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
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  PopupMenuButton(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        child: Text("Home"),
                      ),
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Edit"),
                              onTap: () {},
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              value: 2,
                            ),
                            PopupMenuItem(
                              child: Text("Copy"),
                              value: 3,
                            ),
                            PopupMenuItem(
                              // child: MaterialButton(
                              //onPressed: () {},
                              child: Text('Paste'),
                            ), //),
                            PopupMenuItem(
                                child: IconButton(
                              icon: Icon(
                                // Icons.add_box,
                                Icons.add_call,
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            )),
                            PopupMenuItem(
                                child: IconButton(
                              icon: Icon(
                                // Icons.add_box,
                                Icons.photo,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {},
                            )),
                            PopupMenuItem(
                              child: Text("Rename"),
                              value: 3,
                            ),
                          ]),
                  //secound popup menu
                  PopupMenuButton(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
                                Icons.access_alarm_rounded,
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            )),
                            PopupMenuItem(
                              child: Text("Rename"),
                              value: 3,
                            ),
                          ]),
                ],
              ),
            ],
          ),
        ));
  }
}
