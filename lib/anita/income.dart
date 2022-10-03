import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget();

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Orders'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(children: [
            const SizedBox(height: 20.0),
            const Text(
              'All Total',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.brown),
            ),
            Text(
              ' ¥0',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blue),
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Colors.black,
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'Income',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          // onTap: _onItemTapped,
        ));
  }
}
