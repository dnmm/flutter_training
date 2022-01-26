import 'package:flutter/material.dart';

//This is extending statefull Widget
class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({Key? key}) : super(key: key);

  //making state of statefull widget
  @override
  State<MyStateFullWidget> createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFF0000));
  }
}
