import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 157, 175, 189),
            title: Text('Tab Bar Example'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: ' Home ',
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person ',
                ),
                Tab(
                  icon: Icon(Icons.account_balance),
                  text: 'account balance',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'call',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Text(
                ' Welcome home  ',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                'Welcome search  bar',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                ' Person',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                ' account ',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                ' call  ',
                style: TextStyle(fontSize: 30),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
