import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ravikant/buttom/flutter_example/restAPI2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RestApi extends StatelessWidget {
  const RestApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Rest api "),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Simple> simpleList = [];

  @override
  void initState() {
    super.initState();
    getData().then((data) {
      setState(() {
        simpleList = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: simpleList.length,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          color: Color.fromARGB(255, 138, 243, 234),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "User ID: ${simpleList[index].userId}",
                style: const TextStyle(fontSize: 13),
              ),
              Text(
                "ID: ${simpleList[index].id}",
                style: const TextStyle(fontSize: 13),
              ),
              Text(
                "Title: ${simpleList[index].title}",
                style: const TextStyle(fontSize: 13),
              ),
              Text(
                "Body: ${simpleList[index].body}",
                style: const TextStyle(fontSize: 13),
              )
            ],
          ),
        );
      },
    );
  }

  Future<List<Simple>> getData() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    if (response.statusCode == 200) {
      List data = json.decode(response.body.toString());
      return data.map((item) => Simple.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
