import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Dropdownpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dropdownpage extends StatefulWidget {
  const Dropdownpage({Key? key}) : super(key: key);

  @override
  _DropdownpageState createState() => _DropdownpageState();
}

class _DropdownpageState extends State<Dropdownpage> {
// Initial Selected Value
  String dropdownvalue = 'Shutdown';

// List of items in our dropdown menu
  var items = [
    'Shutdown',
    'Restart',
    'Sleep',
    'Temperarystop',
    'Flyingmode',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Laptop Setting \nPlese Choos Option ?'),
            SizedBox(height: 50),
            //dropdown button
            DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
