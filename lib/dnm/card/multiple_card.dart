import 'package:flutter/material.dart';

class MultipleCard extends StatelessWidget {
  const MultipleCard({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.access_alarm),
                    title: Text('Welcome To My Timeline'),
                    subtitle: Text(
                        'My time line is for sudey for you and your faimaly'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.access_alarm),
                    title: Text('Welcome To My Timeline2'),
                    subtitle: Text(
                        'My time line is for sudey for you and your faimaly'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
