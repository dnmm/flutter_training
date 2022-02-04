import 'package:flutter/material.dart';
import 'buypage.dart';

class Allinone extends StatefulWidget {
  const Allinone({Key? key}) : super(key: key);

  @override
  _AllinoneState createState() => _AllinoneState();
}

class _AllinoneState extends State<Allinone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shop",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Gridshop1(),
    );
  }
}

class Gridshop1 extends StatefulWidget {
  const Gridshop1({Key? key}) : super(key: key);

  @override
  _Gridshop1State createState() => _Gridshop1State();
}

class _Gridshop1State extends State<Gridshop1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "grid",
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.symmetric(vertical: 70),
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
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          //highlightColor: Colors.yellow,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
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
          //cart 2
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
                    'https://spng.pngfind.com/pngs/s/618-6186290_clique-basic-cotton-t-shirt-t-shirts-clique.png',
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
                    child: Text(
                      'rs. 209',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          //3 and 4 card
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
                    'https://www.transparentpng.com/thumb/shirt/7A1cP2-dress-clothin-long-t-shirt-suit-fashion-background.png',
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
                    child: Text(
                      'rs. 429',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          //cart 2
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
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF5FJlyU0Mw1CfaSk8CAYlQqvBkyRXjOn-0Q&usqp=CAU',
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
                    child: Text(
                      'rs. 3049',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          //5 and 6 card
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
                    'https://cdn.picpng.com/dress_shirt/small/icon-dress-shirt-30251.png',
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
                    child: Text(
                      'rs. 449',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          //cart 2
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
                    height: 150,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155, left: 90),
                    height: 30,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        MaterialButton(
                          color: Colors.red[400],
                          splashColor: Colors.blue,
                          height: 40.0,
                          minWidth: 200.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buyshirt(),
                              ),
                            );
                          },
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 154, left: 5),
                    child: Text(
                      'rs. 340',
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
    );
  }
}
