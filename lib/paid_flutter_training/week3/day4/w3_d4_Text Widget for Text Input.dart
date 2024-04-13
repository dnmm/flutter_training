import 'package:flutter/material.dart';

void main() {
  runApp(w3d4textinput());
}

class w3d4textinput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Input Example'),
        ),
        body: Center(
          child: TextInputField(),
        ),
      ),
    );
  }
}

class TextInputField extends StatefulWidget {
  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Enter your text here',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
