import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Social Media Links',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('social media'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvzC_QRv6moAhgNb5C6e3yicKgFND1g2RwA&s',
                width: 50,
                height: 50,
              ),
              title: Text('Facebook'),
              onTap: () {
                // Add Facebook link functionality here
                launch('https://www.facebook.com/');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png?20220821125553',
                width: 50,
                height: 50,
              ),
              title: Text('Twitter'),
              onTap: () {
                // Add Twitter link functionality here
                launch('https://x.com/home');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://cdn.pixabay.com/photo/2016/08/09/17/52/instagram-1581266_1280.jpg',
                width: 50,
                height: 50,
              ),
              title: Text('Instagram'),
              onTap: () {
                // Add Instagram link functionality here
                launch('https://www.instagram.com/');
              },
            ),
          ),
          // Add more cards for other social media platforms
          Card(
            child: ListTile(
              leading: Image.network(
                'data:image/jpeg;base64,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',
                width: 50,
                height: 50,
              ),
              title: Text('Free Fire'),
              onTap: () {
                // Add Free Fire link functionality here
                launch('https://www.freefire.com/');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/4/44/PlayerUnknown%27s_Battlegrounds_Mobile.webp/180px-PlayerUnknown%27s_Battlegrounds_Mobile.webp.png',
                width: 50,
                height: 50,
              ),
              title: Text('PUBG'),
              onTap: () {
                // Add PUBG link functionality here
                launch('https://www.pubg.com/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
