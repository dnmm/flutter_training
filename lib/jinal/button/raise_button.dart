import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          //backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("Click on update button"),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: MaterialButton(
                    color: Colors.red,
                    splashColor: Colors.blue,
                    onPressed: () {},
                    child: const Text("Update"),
                    shape: Border.all(color: Colors.white, width: 1.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Cancle'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
