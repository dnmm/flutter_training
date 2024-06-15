import 'package:flutter/material.dart';

class W8D3BottomNavigation extends StatelessWidget {
  const W8D3BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Index of the selected tab

  void _onItemTapped(int index) {
    // Function called when a tab is tapped
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 151, 195, 216),
        title: const Center(
            child: Text('Bottom Navigation Bar Example')), // App bar title
      ),
      body: Center(
        child: _getPage(_selectedIndex), // Displaying the selected page
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // List of navigation bar items
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Icon for Home tab
            label: 'Home', // Label for Home tab
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Icon for Search tab
            label: 'Search', // Label for Search tab
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Icon for Profile tab
            label: 'Profile', // Label for Profile tab
          ),
        ],
        currentIndex: _selectedIndex, // Current index of the navigation bar
        onTap: _onItemTapped, // Callback function for tab tap
      ),
    );
  }

  Widget _getPage(int index) {
    // Function to get the page based on the selected index
    switch (index) {
      case 0:
        return const Center(
          child: Text('Home Page'), // Display Home page
        );
      case 1:
        return const Center(
          child: Text('Search Page'), // Display Search page
        );
      case 2:
        return const Center(
          child: Text('Profile Page'), // Display Profile page
        );
      default:
        return const Center(
          child: Text('No Page Found'), // Display a message if no page found
        );
    }
  }
}
