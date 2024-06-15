import 'package:flutter/material.dart';

class tabbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.home)),
                Tab(child: Icon(Icons.call)),
                Tab(child: Icon(Icons.message)),
                Tab(child: Icon(Icons.account_balance)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Tab 1 home '),
              ),
              Center(
                child: Text('Tab 2 call'),
              ),
              Center(
                child: Text('Tab 3 message'),
              ),
              Center(
                child: Text('Tab 4 '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
