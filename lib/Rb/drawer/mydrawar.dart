import 'package:flutter/material.dart';
import 'logipage.dart';
import 'contact.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Rb infotech pvt",
            ),
            accountEmail: const Text(
              "707mauryaji@gmail.com",
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
                  "p",
                ),
                backgroundColor: Colors.white,
              )
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text(
              "login",
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Logipage(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text(
              "contect",
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Contactpage(),
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
