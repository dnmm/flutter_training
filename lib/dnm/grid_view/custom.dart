import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Custom Grid',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'How to use Custom Grid Grid',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow,
                ),
              ),
            ),
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 50,
                  mainAxisExtent: 150),
              children: [
                Card(
                  color: Colors.green,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            )));
  }
}
