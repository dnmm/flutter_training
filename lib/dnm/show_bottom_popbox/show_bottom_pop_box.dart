import 'package:flutter/material.dart';

class ShowBottomPopBox extends StatelessWidget {
  const ShowBottomPopBox({Key? key}) : super(key: key);

  static String _title = 'Show Bottom Pop Box';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: const MyShowBottomPopBox(),
      ),
    );
  }
}

class MyShowBottomPopBox extends StatelessWidget {
  const MyShowBottomPopBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Bottom Modal Pop Box'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Do you want to choose Modal BottomSheet ?'),
                      ElevatedButton(
                        child: const Text('ok'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: const Text('Close Bottom Sheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
