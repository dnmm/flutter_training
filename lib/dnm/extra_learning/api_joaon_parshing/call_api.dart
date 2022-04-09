import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

//1** wait....
//2** success...
//3** unauthorized access
//4** server side
//5** our side error

class JsonParsingApi extends StatelessWidget {
  const JsonParsingApi({Key? key}) : super(key: key);

  getApiData() async {
    var url = Uri.parse('https://example.com/whatsit/create');
    Response response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('success');
      final data = jsonDecode(response.body);
      print(data);
    } else {
      print('oops something went wrong');
    }
  }

//final response = await http.get(
    //   Uri.parse('https://dev2.nomikai.live/users'),
    //   // Send authorization headers to the backend.
    //   headers: {
    //     'Content-Type': 'application/json',
    //     "Accept": "application/json",
    //     "Authorization":
    //         "eyJhbGciOiJIUzI1NiIsInR5cCI6ImFjY2VzcyJ9.eyJ1c2VySWQiOiI2MjQyYjQ0Y2RjOWJhZDEwNjk3NzY0ZjAiLCJpYXQiOjE2NDg4ODEzMjAsImV4cCI6MTY0ODk2NzcyMCwiYXVkIjoiaHR0cHM6Ly95b3VyZG9tYWluLmNvbSIsImlzcyI6ImZlYXRoZXJzIiwic3ViIjoiYW5vbnltb3VzIiwianRpIjoiNGUwMDg0MTUtMWRiOS00MTNkLWEwMWMtOTM4ODBhMzU1MTM5In0.ZVpl_QJGxZ8DLedP1Usedv2w1TxpNFHM1CiOjvedj0E,",
    //   },
    // );
    // //  Response response = await http.get(url);
    // print(response.statusCode);
    // if (response.statusCode == 200) {
    //   print('success');
    //   final data = jsonDecode(response.body);
    //   print(data);
    // } else {
    //   print('oops something went wrong');
    // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to use Joson Parshing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'How to use Joson Parshing',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
              ),
            ),
          ),
          body: Center(
            child: Padding(
                padding: const EdgeInsets.all(30),
                child: TextButton(
                  onPressed: () {
                    getApiData();
                  },
                  child: const Text(
                    "Call Api",
                    style: TextStyle(fontSize: 25),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
