import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/navigation/push_data_other_screen/welcome_page.dart';

class SendDataOtherScreen extends StatefulWidget {
  @override
  State<SendDataOtherScreen> createState() => _SendDataOtherScreenState();
}

class _SendDataOtherScreenState extends State<SendDataOtherScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Send Data Other Screen',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Data Other Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Wrap(
                runSpacing: 20,
                children: [
                  TextField(
                    controller: _name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Enter Name'),
                  ),
                  TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Enter Email'),
                  ),
                  TextField(
                    controller: _phoneNumber,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter PhoneNumber'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(
                          name: _name.text,
                          email: _email.text,
                          phoneNumber: _phoneNumber.text),
                    ),
                  );
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
