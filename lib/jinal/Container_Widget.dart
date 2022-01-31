import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      //color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 180.0),
      //margin: const EdgeInsets.only(left: 30.0, top: 50.0),
      //padding: EdgeInsets.all(50.0),
      //margin: EdgeInsets.all(20.0),
      decoration: const BoxDecoration(color: Colors.blueAccent),
      child: Column(
        children: [
          Builder(builder: (context) {
            return const Text(
              "1",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 100,
                  //decoration: TextDecoration.underline,
                  color: Colors.red),
            );
          }),
          const Text(
            "2",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 100),
          ),
          const Text(
            "3",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 100, color: Colors.red),
          ),
          const Text(
            "4",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 100),
          ),
        ],
      ),
    ));
  }
}
