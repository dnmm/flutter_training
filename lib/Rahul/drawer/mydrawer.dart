import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'contact.dart';

class Mydrawers extends StatefulWidget {
  const Mydrawers({Key? key}) : super(key: key);

  @override
  _MydrawersState createState() => _MydrawersState();
}

class _MydrawersState extends State<Mydrawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Flutter Testing Page",
            ),
            accountEmail: const Text(
              "rahulmaurya@gmail.com",
            ),
            currentAccountPicture: const CircleAvatar(
              child: Text(
                "R",
              ),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: const <Widget>[
              CircleAvatar(
                child: Text(
                  "P",
                ),
                backgroundColor: Colors.white,
              )
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text(
              "Login",
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Loginpage(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text(
              "Contact",
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Contactpages(),
                ),
              );
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
