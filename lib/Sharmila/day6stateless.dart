import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  String text = 'some text';
  void pressButton() {
    print('Button predded...');
    text = 'Button is pressed';
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('This is my app bar title'),
            ),
            body: Column(
              children: [
                Text(text),
                TextButton(
                    onPressed: () {
                      setState(() {
                        text = "Text button pressed";
                      });
                    },
                    child: Text('press text button')),
                FloatingActionButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
                ElevatedButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
                OutlinedButton(
                    onPressed: (() => pressButton()),
                    child: Text('press Button')),
              ],
            )));
  }
}

// class MyClassApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyClassApp();
//   }
// }

// class _MyClassApp extends State {
//   String text = 'some text';
//   void pressButton() {
//     print('Button predded...');
//     text = 'Button is pressed';
//     setState(() {
//       text = "Text button pressed";
//     });
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text('This is my app bar title'),
//             ),
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                       margin: const EdgeInsets.all(15.0),
//                       padding: const EdgeInsets.all(3.0),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.blueAccent)),
//                       child: Expanded(child: Text(text))),
//                   Expanded(
//                     child: TextButton(
//                         onPressed: (() => pressButton()),
//                         child: Text('press text button')),
//                   ),
//                   Expanded(
//                     child: FloatingActionButton(
//                         onPressed: (() => pressButton()),
//                         child: Text('press Button')),
//                   ),
//                   Expanded(
//                     child: ElevatedButton(
//                         onPressed: (() => pressButton()),
//                         child: Text('press Button')),
//                   ),
//                   Expanded(
//                     child: OutlinedButton(
//                         onPressed: (() => pressButton()),
//                         child: Text('press Button')),
//                   ),
//                 ],
//               ),
//             )));
//   }
// }
