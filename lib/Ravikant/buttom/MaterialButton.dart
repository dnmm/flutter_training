import 'package:flutter/material.dart';

class MyMaterialButtonRK extends StatelessWidget {
  const MyMaterialButtonRK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Material Button RK",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Material Button RK",
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            MaterialButton(
              color: Colors.red[400],
              splashColor: Colors.yellow,
              //highlightColor: Colors.yellow,
              height: 200.0,
              minWidth: 100.0,
              onPressed: () {},
              child: const Text(
                "submit",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
             */
              shape: Border.all(color: Colors.black, width: 3.0),
            ),
            MaterialButton(
              color: Colors.red[400],
              splashColor: Colors.yellow,
              //highlightColor: Colors.yellow,
              height: 400.0,
              minWidth: 300.0,
              onPressed: () {},
              child: const Text(
                "Ok",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
             */
              shape: Border.all(color: Colors.black, width: 3.0),
            ),
          ],
        )),
      ),
    );
  }
}
