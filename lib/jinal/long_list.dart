import 'package:flutter/material.dart';

class Long extends StatelessWidget {
  const Long({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Long List'),
        ),
        body: getListView(),
      ),
    );
  }
}

List<String> getListElements() {
  var items = List<String>.generate(100, (Counter) => "Item $Counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listview = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItems[index]),
    );
  });
  return listview;
}
