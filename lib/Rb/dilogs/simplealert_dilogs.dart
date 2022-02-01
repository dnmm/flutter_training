import 'package:flutter/material.dart';

class AleartSimple extends StatelessWidget {
  const AleartSimple({Key? key}) : super(key: key);

  static const String _title = 'Dialogbox';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: const Text(_title)),
        drawerEnableOpenDragGesture: false,
        body: const Center(
          child: MySimpleDiaglog(),
        ),
      ),
    );
  }
}

class MySimpleDiaglog extends StatelessWidget {
  const MySimpleDiaglog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'AlertDialog',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
          content: const Text(
            'do you want to submit ?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'cancel'),
              child: const Text('cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('submit'),
    );
  }
}
