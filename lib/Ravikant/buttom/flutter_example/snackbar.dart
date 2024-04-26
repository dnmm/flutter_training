import 'package:flutter/material.dart';

class snackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Example',
      home: SnackBarExample(),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Example'),
      ),
      body: Container(
        color:
            Color.fromARGB(255, 99, 195, 233), // Set the background color here
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('This is a SnackBar'),
                action: SnackBarAction(
                  label: 'vapes kijiye',
                  onPressed: () {  
                    // Code to undo the action
                  },
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Show SnackBar', style: TextStyle(color: Colors.blue)),
          ),
        ),
      ),
    );
  }
}
