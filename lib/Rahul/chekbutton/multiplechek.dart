import 'package:flutter/material.dart';

class Multiplechekbox extends StatelessWidget {
  const Multiplechekbox({Key? key}) : super(key: key);

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
    {"name": "software programming", "isChecked": true},
    {"name": "watching movies", "isChecked": false},
    {
      "name": "Video Games",
      "isChecked": false,
    },
    {"name": "Readding Books", "isChecked": false},
    {"name": "Surfling The Internet", "isChecked": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter testing page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            const Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 24),
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
