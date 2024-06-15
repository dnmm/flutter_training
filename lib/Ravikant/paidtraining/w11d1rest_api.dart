// Importing the material.dart package which contains the Flutter framework.
import 'package:flutter/material.dart';
// Importing the http.dart package with an alias 'http'.
import 'package:http/http.dart' as http;
// Importing the dart:convert library to work with JSON data.
import 'dart:convert';

void main() {
  // Running the Flutter application by calling the runApp() function with MyApp as the root widget.
  runApp(const W11D1RestAPIs());
}

// Defining a stateless widget called MyApp.
class W11D1RestAPIs extends StatelessWidget {
  const W11D1RestAPIs({super.key});

  @override
  Widget build(BuildContext context) {
    // Returning a MaterialApp widget, which provides the basic app structure.
    return MaterialApp(
      // Defining the home screen of the app as a Scaffold widget.
      home: Scaffold(
        // Adding an AppBar with a title to the Scaffold.
        appBar: AppBar(
          title: const Text('REST API Example'),
        ),
        // Adding a body to the Scaffold using the Center widget.
        body: Center(
          // Using FutureBuilder to handle asynchronous operations.
          child: FutureBuilder<Post>(
            // Defining the future property with a call to the fetchPost() function.
            future: fetchPost(),
            // Building the UI based on the current state of the Future.
            builder: (context, snapshot) {
              // Displaying a CircularProgressIndicator while waiting for data.
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              // Displaying an error message if there's an error.
              else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              // Displaying the title of the fetched post.
              else {
                return Text('Title: ${snapshot.data!.title}');
              }
            },
          ),
        ),
      ),
    );
  }

  // Defining a function to fetch post data from a REST API.
  Future<Post> fetchPost() async {
    // Making a GET request to the specified API endpoint.
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    // Checking if the response status code is OK (200).
    if (response.statusCode == 200) {
      // Parsing the JSON response and creating a Post object.
      return Post.fromJson(jsonDecode(response.body));
    } else {
      // Throwing an exception if the request fails.
      throw Exception('Failed to load post');
    }
  }
}

// Defining a Post class to represent a single post object.
class Post {
  // Declaring instance variables for id, title, and body.
  final int id;
  final String title;
  final String body;

  // Constructor for creating a Post object.
  Post({required this.id, required this.title, required this.body});

  // Factory method to create a Post object from a JSON map.
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
