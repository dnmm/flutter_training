// lib/home_page.dart
import 'package:flutter/material.dart';

// HomePage50 नामक क्लास बनाना
class HomePage50 extends StatefulWidget {
  @override
  HomePage50State createState() => HomePage50State();
}

// StatefulWidget के लिए State क्लास बनाना
class HomePage50State extends State<HomePage50> {
  int selectedIndex = 0; // वर्तमान में चयनित टैब का इंडेक्स स्टोर करना

  // प्रत्येक टैब के लिए पेज की लिस्ट बनाना
  final List<Widget> pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))), // होम पेज
    Center(child: Text('Orders', style: TextStyle(fontSize: 24))), // ऑर्डर पेज
    Center(
        child: Text('Favorites', style: TextStyle(fontSize: 24))), // फेवरेट पेज
    Center(
        child: Text('Profile', style: TextStyle(fontSize: 24))), // प्रोफाइल पेज
  ];

  // टैब पर क्लिक होने पर इंडेक्स अपडेट करने के लिए फंक्शन
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index; // चयनित इंडेक्स को अपडेट करना
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'), // एप्प बार का शीर्षक
        backgroundColor: Colors.blue, // एप्प बार का रंग
      ),
      body: pages[selectedIndex], // चयनित पेज दिखाना
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // बॉटम नेविगेशन बार आइटम्स
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // होम का आइकन
            label: 'Home', // होम का लेबल
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long), // ऑर्डर का आइकन
            label: 'Orders', // ऑर्डर का लेबल
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // फेवरेट का आइकन
            label: 'Favorites', // फेवरेट का लेबल
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // प्रोफाइल का आइकन
            label: 'Profile', // प्रोफाइल का लेबल
          ),
        ],
        currentIndex: selectedIndex, // वर्तमान चयनित टैब इंडेक्स
        selectedItemColor: Colors.blue, // चयनित आइटम का रंग
        unselectedItemColor: Colors.grey, // चयनित न होने वाले आइटम का रंग
        onTap: onItemTapped, // टैब पर क्लिक होने पर कॉल होने वाला फंक्शन
      ),
    );
  }
}
