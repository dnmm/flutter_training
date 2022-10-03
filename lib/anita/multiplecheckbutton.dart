import 'package:flutter/material.dart';

class Multiplecheckbutton extends StatelessWidget {
  const Multiplecheckbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'flutter testing page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Generate a list of available hobbies here
  List<Map> availableHobbies = [
    {"name": "Software Engineer", "isChecked": true},
    {"name": "Web Developer", "isChecked": false},
    {
      "name": "Playing Games",
      "isChecked": false,
    },
    {"name": "Readding Books", "isChecked": false},
    {"name": "singing", "isChecked": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Check Button'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),

            // The checkboxes will be here
            Column(
                children: availableHobbies.map((hobby) {
              return CheckboxListTile(
                  value: hobby["isChecked"],
                  title: Text(hobby["name"]),
                  onChanged: (Valu) {
                    setState(() {
                      hobby["isChecked"] = Valu;
                    });
                  });
            }).toList()),

            /*
            // Display the result here
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: availableHobbies.map((hobby) {
                if (hobby["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(hobby["name"]),
                    ),
                  );
                }

                return Container();
              }).toList(),
            )
            
            */
          ]),
        ),
      ),
    );
  }
}
