import 'package:flutter/material.dart';

class Buyshirt extends StatelessWidget {
  const Buyshirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shirt",
      home: Buyshirt1(),
    );
  }
}

class Buyshirt1 extends StatefulWidget {
  const Buyshirt1({Key? key}) : super(key: key);

  @override
  _Buyshirt1State createState() => _Buyshirt1State();
}

class _Buyshirt1State extends State<Buyshirt1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "shoping shirt ",
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "buy T-shart ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 10.0),
                child: const Text(
                  "payment",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
