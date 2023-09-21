import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWebImage extends StatelessWidget {
  const MyWebImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: SizedBox(
            child: Row(
              children: [
                Text('12:00'),
                SizedBox(
                  width: 350,
                ),
                CupertinoButton(
                  minSize: double.minPositive,
                  padding: EdgeInsets.zero,
                  child:
                      Icon(Icons.network_cell, color: Colors.white, size: 20),
                  onPressed: () {},
                ),
                CupertinoButton(
                  minSize: double.minPositive,
                  padding: EdgeInsets.zero,
                  child:
                      Icon(Icons.battery_3_bar, color: Colors.white, size: 20),
                  onPressed: () {},
                ),
                CupertinoButton(
                  minSize: double.minPositive,
                  padding: EdgeInsets.zero,
                  child: Text(
                    '5o%',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Camera',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          // onTap: _onItemTapped,
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm0pc0XU09N6JQGUk96vc2AMo0zGumYowH0A&usqp=CAU',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380, left: 60, right: 40),
                child: Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.cloud_circle,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.games,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.radio,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 420, left: 50.3, right: 40),
                child: Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Settings'),
                      Text('Music'),
                      Text('Cloud'),
                      Text('Games'),
                      Text('Radio'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 460, left: 60, right: 40),
                child: Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calculate,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.calendar_month,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.message,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.alarm,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500, left: 50.3, right: 40),
                child: Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Calculator'),
                      Text('Mail'),
                      Text('Calender'),
                      Text('Message'),
                      Text('Alarm'),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 220.8),
                    child: Text(
                      '12:00',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 240.5),
                child: Text(
                  'Tuesday,Sep 20',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
