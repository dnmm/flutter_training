import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/button1.dart';

class MySearchText extends StatelessWidget {
  const MySearchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove debug form app bar
      //app bar ka debug smymle ko remove karna
      debugShowCheckedModeBanner: false,
      title: "Search Text",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon cusIcon = const Icon(Icons.search);
  Widget cusSearchBar = const Text('AppBar');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle use text to center
        // centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          //three  icon menu three linging
          icon: const Icon(Icons.menu),
        ),
        //for there dart icon button
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (cusIcon.icon == Icons.search) {
                  cusIcon = const Icon(Icons.cancel);
                  cusSearchBar = const TextField(
                    textInputAction: TextInputAction.go,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  );
                } else {
                  // Icon cusIcon = const Icon(Icons.search);
                  //Widget cusSearchBar = const Text('AppBar');
                }
              });
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
        //titleSpacing: 40.0,
        title: cusSearchBar,
      ),
    );
  }
}
