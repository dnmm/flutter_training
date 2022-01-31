import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          //backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Click on update button"),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Update_page(context);
                },
                child: const Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void Update_page(BuildContext context) {
  var popup = const AlertDialog(
    title: Text('Update Sucessfully'),
    content: Text('Enjoy our app'),
  );
  showDialog(
      context: context,
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (BuildContext) => popup);
}
