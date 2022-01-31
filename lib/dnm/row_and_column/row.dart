import 'package:flutter/material.dart';

class MyRowWtithMultipleText extends StatelessWidget {
  const MyRowWtithMultipleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiple Row",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Multiple Item in Row",
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Center(
                    child: Wrap(
                  spacing: 20,
                  children: const [
                    Text("Text Here 1"),
                    Text("Text Here 2"),
                    Text("Text Here 3"),
                  ],
                )),
              ],
            ),
            Row(
              children: [
                Center(
                    child: Wrap(
                  spacing: 20,
                  children: const [
                    Text("Text Here 1"),
                    Text("Text Here 2"),
                    Text("Text Here 3"),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
