import 'package:flutter/material.dart';

class Mypopuppage3 extends StatefulWidget {
  const Mypopuppage3({Key? key}) : super(key: key);
  @override
  _MyState createState() {
    return _MyState();
  }
}

class _MyState extends State<Mypopuppage3> {
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text("Menu"),
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("edit"),
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
                          child: Text("cut"),
                          value: 3,
                        ),
                        PopupMenuItem(
                            child: MaterialButton(
                          onPressed: () {},
                          child: Text('payment'),
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
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: PopupMenuButton(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text("Menu"),
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("replace"),
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
                            child: Text("cut"),
                            value: 3,
                          ),
                          PopupMenuItem(
                              child: MaterialButton(
                            onPressed: () {},
                            child: Text('payment'),
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
              ),
              //secound popup menu
              Container(
                alignment: Alignment.topLeft,
                child: PopupMenuButton(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text("edit"),
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("small change"),
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
              ),
            ],
          )),
        ));
  }
}
