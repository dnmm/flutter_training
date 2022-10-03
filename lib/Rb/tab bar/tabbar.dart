import 'package:flutter/material.dart';

class Tabbar2 extends StatefulWidget {
  const Tabbar2({Key? key}) : super(key: key);

  @override
  _Tabbar1State createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tabbar',
      home: Tabbarpage1(),
    );
  }
}

class Tabbarpage1 extends StatefulWidget {
  const Tabbarpage1({Key? key}) : super(key: key);

  @override
  _Tabbarpage1State createState() => _Tabbarpage1State();
}

class _Tabbarpage1State extends State<Tabbarpage1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
          ],
        ),
      ),
    );
  }
}
