// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Emaildetaiss extends StatefulWidget {
//   const Emaildetaiss({Key? key}) : super(key: key);

//   @override
//   _EmaildetaissState createState() => _EmaildetaissState();
// }

// class _EmaildetaissState extends State<Emaildetaiss> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: "url email",
//       debugShowCheckedModeBanner: false,
//       home: Emailhome(),
//     );
//   }
// }

// Future<void> call(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw "cannot alunch $url";
//   }
// }

// launchurl() async {
//   const url = 'https://www.youtube.com/';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw "cannot launch $url";
//   }
// }

// launchgoogle() async {
//   const url = 'https://www.google.com/';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw "cannot launch $url";
//   }
// }

// launchEmail() async {
//   launch(
//     'mailto:707mauryaji@gmail.com?subject=TestEmail&body=Subscribe webfun please',
//   );
// }

// class Emailhome extends StatefulWidget {
//   const Emailhome({Key? key}) : super(key: key);

//   @override
//   _EmailhomeState createState() => _EmailhomeState();
// }

// class _EmailhomeState extends State<Emailhome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.indigo[900],
//         title: const Text(
//           'url launcher',
//           style: TextStyle(
//             fontSize: 30,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             MaterialButton(
//               padding: const EdgeInsets.only(left: 10, right: 10),
//               onPressed: () {
//                 call("tel:7651972973");
//               },
//               color: Colors.indigo[900],
//               child: const Text(
//                 "call",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             const MaterialButton(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               onPressed: launchurl,
//               color: Colors.indigo,
//               child: Text(
//                 'youtube',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//             const MaterialButton(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               onPressed: launchEmail,
//               color: Colors.indigo,
//               child: Text(
//                 'Email',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//             const MaterialButton(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               onPressed: launchgoogle,
//               color: Colors.indigo,
//               child: Text(
//                 'google',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
