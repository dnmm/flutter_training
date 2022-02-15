import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/login_signup/login_page.dart';
import 'package:flutter_application_1/dnm/login_signup/signup_page.dart';

class MyDrawaApp extends StatelessWidget {
  const MyDrawaApp({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyDrawarPage(title: appTitle),
    );
  }
}

class MyDrawarPage extends StatelessWidget {
  const MyDrawarPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("My Drawar"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Welcome to Drawar Page",
              ),
              accountEmail: const Text(
                "dnm.dpm@gmail.com",
              ),
              currentAccountPicture: const CircleAvatar(
                child: Text(
                  "D",
                ),
                backgroundColor: Colors.white,
              ),
              //   otherAccountsPictures: const <Widget>[
              //     CircleAvatar(
              //       child: Text(
              //         "D",
              //       ),
              //       backgroundColor: Colors.white,
              //     )
              //   ],
              //   onDetailsPressed: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text(
                "login",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LogiPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text(
                "Signup",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignupPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
