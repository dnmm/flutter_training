import 'package:flutter/material.dart';

void main() {
  runApp(imagesexample());
}

class imagesexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Example'),
        ),
        body: Center(
          child: Image.network(
            'https://example.com/image.jpg', // Replace this URL with your image URL
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return Text('Error loading image');
            },
          ),
        ),
      ),
    );
  }
}
