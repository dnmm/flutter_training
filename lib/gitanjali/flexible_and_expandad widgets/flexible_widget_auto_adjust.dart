import 'package:flutter/material.dart';

class FlexibleWidgetAutoAdjust extends StatelessWidget {
  const FlexibleWidgetAutoAdjust({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            tooltip: 'Menu',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: <Widget>[
                // First Row of Red Containers
                Flexible(
                  flex: 4,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Center Blue Container
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Last Row of Cyan Containers
                Flexible(
                  flex: 4,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  runApp(const FlexibleWidgetAutoAdjust());
}
