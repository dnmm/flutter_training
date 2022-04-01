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
