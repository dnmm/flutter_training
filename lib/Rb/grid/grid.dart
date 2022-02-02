import 'package:flutter/material.dart';

class Gridpage extends StatelessWidget {
  const Gridpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "grid",
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            //cart 1
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTssvranCSzBSCl7deZLxnbiA66pA_qByy93w&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 349',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //secound card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx_0M-cY-HDffwDDVUG6sh2oXKe82IpCubOg&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 549',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //third cart
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9oy7VnINKmXnZpHqP5hnbpFAsdNznxHewOg&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 189',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // fourth cart
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7mp7dlIoNd-StqI8ky3iH8TLaawwCyU39mA&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 249',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //fifth cart
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx_0M-cY-HDffwDDVUG6sh2oXKe82IpCubOg&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 400',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //six cart
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnxLQCECnw7mD1xsScerHYqCXb2yO9EqMGfQ&usqp=CAU',
                      height: 180,
                      width: 245,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 188, left: 140),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              debugPrint('Buy clicked');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.red],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 10),
                      child: Text(
                        'rs. 349',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
