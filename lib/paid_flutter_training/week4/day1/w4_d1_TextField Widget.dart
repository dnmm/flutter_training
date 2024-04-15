import 'package:flutter/material.dart';

void main() {
  runApp(w4d1TextField());
}

class w4d1TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Example'),
        ),
        body: Center(
          child: TextInputForm(),
        ),
      ),
    );
  }
}

class TextInputForm extends StatefulWidget {
  @override
  _TextInputFormState createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  void _submitText() {
    setState(() {
      _inputText = _controller.text;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter your text here',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitText,
            child: Text('Submit'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
