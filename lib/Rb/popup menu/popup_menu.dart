import 'package:flutter/material.dart';

class Popmen extends StatelessWidget {
  const Popmen({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MypopupPage(),
    );
  }
}

class MypopupPage extends StatefulWidget {
  @override
  _MypopupPageState createState() => _MypopupPageState();
}

class _MypopupPageState extends State<MypopupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Dropdown Menu"),
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
                textTheme: TextTheme().apply(bodyColor: Colors.black),
                dividerColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.white)),
            child: PopupMenuButton<int>(
              color: Colors.blue,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                PopupMenuItem<int>(
                    value: 1, child: Text("Privacy Policy page")),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("Logout")
                      ],
                    )),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        print("setting click");
        break;
      case 1:
        print("Privacy Clicked");
        break;
      case 2:
        print("User Logged out");

        break;
    }
  }
}
