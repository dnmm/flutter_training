import 'package:flutter/material.dart';

//void main() => runApp(const WidgetLoop());

class WidgetLoop extends StatelessWidget {
  const WidgetLoop({Key? key}) : super(key: key);

  @override
  Widget build(context) => const MaterialApp(home: HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: SafeArea(
          child: Center(
              child: Row(children: [
        SizedBox(
            //adjust size widh for row and colum screen
            width: MediaQuery.of(context).size.width - 0.0,
            child: Content())
      ]))));
}

class Content extends StatelessWidget {
  final List<String> elements = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "A Million Billion Trillion",
    "A much, much longer text that will still fit"
  ];

  Content({Key? key}) : super(key: key);
  @override
  Widget build(context) => GridView.builder(
      itemCount: elements.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //    image size view increase or decrease
        maxCrossAxisExtent: 130.0,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      itemBuilder: (context, i) => Card(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(elements[i])))));
}
