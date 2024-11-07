import 'package:flutter/material.dart';

class SimpleExpandedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded Example'),
          backgroundColor: Colors.greenAccent[400],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
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
      debugShowCheckedModeBanner: false,
    );
  }
}
