import 'package:flutter/material.dart';
//import 'package:flutter_training/Rb/radio%20button/radiorow.dart';

class Simplecart extends StatelessWidget {
  const Simplecart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Homepage1(),
    );
  }
}

class Homepage1 extends StatelessWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('container example'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        //All elements are wrapped
        children: [
          //in this column
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 20,
            child: Text('Demonstration of Row'),
          ),
          // start row 1
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 10,
                shadowColor: Colors.red,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'name',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 8,
                shadowColor: Colors.red,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 100,
                  child: const Text(
                    'mobile no',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 8,
                shadowColor: Colors.red,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'address',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 8,
                shadowColor: Colors.red,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'course',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          // row 2 start
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 70,
                  child: const Text(
                    'R',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 100,
                  child: const Text(
                    '76xxxxxxx',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'sarnath',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'b.tech',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          // row complet start column part
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
            child: Text('Demonstration of row 2'),
          ),
          //row 3 start
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 70,
                  child: const Text(
                    'R',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 100,
                  child: const Text(
                    '76xxxxxxx',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'sarnath',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'b.tech',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
            child: Text('Demonstration of row 2'),
          ),
          Column(
            children: [
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'my container first program',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'row column mixer design',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 70,
                  child: const Text(
                    'R',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 100,
                  child: const Text(
                    '76xxxxxxx',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'sarnath',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Card(
                margin: const EdgeInsets.all(5),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'b.tech',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(25),
              child: const Text(
                'this is container example .i am trying to understude you both row and column type .thank you for watching code',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
