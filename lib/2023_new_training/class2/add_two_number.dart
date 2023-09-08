import 'package:flutter/material.dart';

class AddTwoNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController numOneController = TextEditingController();
  TextEditingController numTwoController = TextEditingController();
  int sum = 0;

  void add() {
    int num1 = int.parse(numOneController.text);
    int num2 = int.parse(numTwoController.text);
// call two number add
    setState(() {
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Two Number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: numOneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Enter 1st Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: numTwoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Enter 2nd Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  add();
                },
                child: const Text("Add")),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Result = $sum",
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}



// class AddTwoNumber extends StatefulWidget {
//   const AddTwoNumber({super.key});

//   @override
//   State<StatefulWidget> createState() => AddTwoNumberState();
// }

// class AddTwoNumberState extends State<AddTwoNumber> {
//   TextEditingController numOneController = TextEditingController();
//   TextEditingController numTwoController = TextEditingController();
//   int sum = 0;

//   void add() {
//     int num1 = int.parse(numOneController.text);
//     int num2 = int.parse(numTwoController.text);
// // call two number add
//     setState(() {
//       sum = num1 + num2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add Two Number"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 controller: numOneController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   hintText: "Enter 1st Number",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 controller: numTwoController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   hintText: "Enter 2nd Number",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   add();
//                 },
//                 child: const Text("Add")),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Result = $sum",
//               style: const TextStyle(fontSize: 30),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
