import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyRestApi extends StatefulWidget {
  const MyRestApi({Key? key}) : super(key: key);

  @override
  State<MyRestApi> createState() => _MyRestApiState();
}

class _MyRestApiState extends State<MyRestApi> {
  void initState() {
    super.initState();
    var responce = RestApi().createAlbum();
    print(responce.whenComplete(() => print("apicallcomplete")));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Rest API',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to material app'),
        ),
        body: Text("hello"),
      ),
    );
  }
}

class RestApi {
  Future<http.Response> createAlbum() async {
    var responce = await http.post(
      Uri.parse('http://127.0.0.1:3030/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': "application/json",
        //    'Authorization':
        //      'eyJhbGciOiJIUzI1NiIsInR5cCI6ImFjY2VzcyJ9.eyJ1c2VySWQiOiI2NGtLZnh3VzFSS2ZaV1hSIiwiaWF0IjoxNjQ3OTQ1NzQwLCJleHAiOjE2NDgwMzIxNDAsImF1ZCI6Imh0dHBzOi8veW91cmRvbWFpbi5jb20iLCJpc3MiOiJmZWF0aGVycyIsInN1YiI6ImFub255bW91cyIsImp0aSI6ImI2MTBhMDQzLWU3OTItNGEyMy1iNzYwLTM5ZDBmZjk3MzdjMiJ9.QG_An_Sub7HhV4SD3mLOd0QFy5TvTqVm4QWrhFjyqdI'
      },
      body: jsonEncode(<String, String>{
        //    "strategy": "local",
        "email": "dnm.dpm1@gmail.com",
        "password": "123456",
      }),
    );
    print(responce.statusCode);
    print(responce.body);
    return responce;
  }
}
