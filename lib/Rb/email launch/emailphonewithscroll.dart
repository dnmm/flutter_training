import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Emaillaunc extends StatelessWidget {
  const Emaillaunc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return const MaterialApp(title: 'Flutter Demo', home: Emailurlcaunc());
  }
}

class Emailurlcaunc extends StatelessWidget {
  const Emailurlcaunc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Launchers"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.add_to_home_screen),
                              label: const Text(
                                "Open Website",
                                style: TextStyle(fontSize: 25),
                              ),
                              onPressed: () => launch("http://www.tryeno.com"),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.call),
                            label: const Text(
                              "Make a Call",
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () => launch("tel://123"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.email),
                            label: const Text("Send a Email",
                                style: TextStyle(fontSize: 25)),
                            onPressed: () => launch(
                                "mailto:707mauryaji@gmail.com?subject=TestEmail&body=Subscribe webfun please"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.sms),
                            label: const Text("facebook",
                                style: TextStyle(fontSize: 25)),
                            onPressed: () =>
                                launch("https://www.facebook.com/friends"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.sms),
                            label: const Text("youtube",
                                style: TextStyle(fontSize: 25)),
                            onPressed: () => launch("https://www.youtube.com/"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
