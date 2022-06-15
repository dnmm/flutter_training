import 'package:flutter/material.dart';

class VisibilityButton extends StatefulWidget {
  @override
  _VisibilityButtonState createState() => _VisibilityButtonState();
}

class _VisibilityButtonState extends State<VisibilityButton> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visibility Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Show/Hide Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.green,
                ),
              ),
              ElevatedButton(
                child: Text('Show/Hide'),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
