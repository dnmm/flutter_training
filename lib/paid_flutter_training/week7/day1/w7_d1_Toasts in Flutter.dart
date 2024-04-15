import 'package:flutter/material.dart';

class Toast {
  static void show(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

void main() {
  runApp(ToastExample());
}

class ToastExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Toast.show(context, 'This is a toast message');
          },
          child: Text('Show Toast'),
        ),
      ),
    );
  }
}
