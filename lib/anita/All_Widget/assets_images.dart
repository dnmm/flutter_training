import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/jinal/image.dart';

class ImagesPage2 extends StatelessWidget {
  const ImagesPage2({Key? key}) : super(key: key);

  get context => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Images page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Images page',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Image.asset("images/Anita.jpeg"),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        child: Text("Show Alert Dialog"),
                        onPressed: () {
                          showCupertinoDialog(
                              context: context,
                              builder: (context) {
                                return CupertinoAlertDialog(
                                  title: Text("Delete File"),
                                  content: Text(
                                      "Are you sure you want to delete this file?"),
                                  actions: [
                                    CupertinoDialogAction(
                                        child: Text("YES"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }),
                                    CupertinoDialogAction(
                                      child: Text("NO"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
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
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.calculate),
            //   label: 'Calculator',
            // ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
