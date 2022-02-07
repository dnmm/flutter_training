import 'package:flutter/material.dart';

class Dropdown1 extends StatelessWidget {
  const Dropdown1({Key? key}) : super(key: key);
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
  String dropdownvalue = 'shutdown';

// List of items in our dropdown menu
  var items = [
    'shutdown',
    'restart',
    'sleep',
    'temperarystop',
    'flyingmode',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dropdown button "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('laptop setting \nplese choos option ?'),
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
