import 'package:flutter/material.dart';

class Showmodelbottmsheet1 extends StatelessWidget {
  const Showmodelbottmsheet1({Key? key}) : super(key: key);

  static const String _title = 'showModalBottomSheet';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Showmodelbottomsheetpage(),
      ),
    );
  }
}

class Showmodelbottomsheetpage extends StatelessWidget {
  const Showmodelbottomsheetpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
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
                      const Text('do you want to choos Modal BottomSheet ?'),
                      ElevatedButton(
                        child: const Text('ok'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
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
