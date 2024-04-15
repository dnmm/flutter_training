import 'package:flutter/material.dart';

void main() {
  runApp(cardsexample());
}

class cardsexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'),
        ),
        body: ListView.builder(
          itemCount: 5, // Number of cards
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text((index + 1).toString()),
                ),
                title: Text('Card ${index + 1}'),
                subtitle: Text('This is card number ${index + 1}'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Action to perform when the card is tapped
                  print('Tapped on card ${index + 1}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
