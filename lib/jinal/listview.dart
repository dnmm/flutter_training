import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.wifi,
                  color: Colors.white,
                ),
              ),
              title: Text("Network & Setting"),
              subtitle: Text('Wi-fi, mobile data, internet'),
              //trailing: Icon(Icons.add),
              onTap: () {
                debugPrint('Network & setting');
              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.lightGreen),
                child: Icon(
                  Icons.devices,
                  color: Colors.white,
                ),
              ),
              title: Text("Conneced Devices"),
              subtitle: Text('Bluetooth'),
              //trailing: Icon(Icons.add),
              onTap: () {
                debugPrint('Conneced Devices');
              },
            ),
          ],
        ),
      ),
    );
  }
}
