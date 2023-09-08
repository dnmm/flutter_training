import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallingApi extends StatefulWidget {
  const CallingApi({Key? key}) : super(key: key);

  @override
  State<CallingApi> createState() => _CallingApiState();
}

class _CallingApiState extends State<CallingApi> {
  final url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // ODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var res =
        await http.get(Uri.http("jsonplaceholder.typicode.com", "photos"));

    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
