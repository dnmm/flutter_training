// import 'package:flutter/material.dart';

// class cardMultiple extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Cards Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Cards Example'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Card(
//             color: Color.fromARGB(255, 59, 248, 255),
//             child: ListTile(
//               title: Text(
//                 'Cord 1 ',
//                 style: TextStyle(fontSize: 43),
//               ),
//               subtitle: Text(
//                 'This is card 1',
//                 style: TextStyle(fontSize: 23),
//               ),
//               textColor: const Color.fromARGB(255, 243, 33, 33),
//             ),
//           ),
//           Card(
//             color: Colors.amber,
//             child: ListTile(
//               title: Text('Card 2', style: TextStyle(fontSize: 43)),
//               subtitle: Text('This is card 2', style: TextStyle(fontSize: 23)),
//               textColor: Colors.blue,
//             ),
//           ),
//           Card(
//             color: const Color.fromARGB(255, 140, 255, 64),
//             child: ListTile(
//               title: Text(
//                 'Card 3',
//                 style: TextStyle(fontSize: 43),
//               ),
//               subtitle: Text(
//                 'This is card 3',
//                 style: TextStyle(fontSize: 33),
//               ),
//               textColor: Colors.blue,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CardMultiple extends StatelessWidget {
  final int count;

  CardMultiple({required this.count});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Cards Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Cards Example'),
        ),
        body: ListView.builder(
          itemCount: count,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color.fromARGB(255, 232, 236, 221),
              child: ListTile(
                title:
                    Text('Card ${index + 1}', style: TextStyle(fontSize: 20)),
                subtitle: Text('This is card ${index + 1}',
                    style: TextStyle(fontSize: 16)),
                textColor: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
