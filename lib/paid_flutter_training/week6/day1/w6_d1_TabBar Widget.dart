import 'package:flutter/material.dart';

void main() {
  runApp(tabbarwidget());
}

class tabbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Tab 1 Content'),
              ),
              Center(
                child: Text('Tab 2 Content'),
              ),
              Center(
                child: Text('Tab 3 Content'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
