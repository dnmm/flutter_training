import 'package:flutter/material.dart';

class W5D3ImagesExample extends StatelessWidget {
  const W5D3ImagesExample(
      {super.key}); // Constructor for the W5D3ImagesExample class.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image', // Title of the application.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Setting the primary color theme.
      ),
      home: const MyHomePage(), // Setting the home page of the app.
      debugShowCheckedModeBanner:
          false, // Disabling debug banner in checked mode.
    );
  }
}

// setup a stateful widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Constructor for the MyHomePage class.

  @override
  MyHomePageState createState() =>
      MyHomePageState(); // Creating state for MyHomePage.
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design of the application
      appBar: AppBar(
          title: const Center(
              child: Text("IMAGE EXAMPLE")), // Setting app bar title.
          backgroundColor: Colors.green), // Setting app bar background color.
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          // Image.asset('assets/images/flutter_logo.png',
          //     width: 200.0, height: 200.0),
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Image.network(src)
            child: Image.network(
                "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"), // Displaying image from network.
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Image.network(src)
            child: Image.network(
                "https://images.pexels.com/photos/39574/flower-exotic-colorful-pink-39574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), // Displaying image from network.
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://thumbs.dreamstime.com/b/woman-praying-free-birds-to-nature-sunset-background-woman-praying-free-birds-enjoying-nature-sunset-99680945.jpg"), // Displaying image from network.
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500"), // Displaying image from network.
          )
        ]),
      ),
    );
  }
}
