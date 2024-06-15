import 'package:flutter/material.dart';

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
            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D', // Replace this URL with your image URL
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
