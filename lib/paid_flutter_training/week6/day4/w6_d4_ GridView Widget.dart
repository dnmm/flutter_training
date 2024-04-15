import 'package:flutter/material.dart';

void main() {
  runApp(GridViewExample());
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          children: List.generate(6, (index) {
            return Center(
              child: GridTile(
                child: Container(
                  color: Colors.blue[100 * (index % 9)],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
