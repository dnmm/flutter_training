import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            color: Colors.blue,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.network_wifi,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 120),
                  child: Text('Wi-Fi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.green,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.devices,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 70),
                  child: Text('Connected Devices',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 70),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 70),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 70),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
