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
              padding: EdgeInsets.all(2.0),
              child: Text("Click on update button"),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {},
                child: const Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
