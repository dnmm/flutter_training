import 'package:flutter/material.dart';

// 1. add below dependencies:
//  shared_preferences: ^2.0.13
// 2. import below
import 'package:shared_preferences/shared_preferences.dart';

class StoreDataLocal extends StatelessWidget {
  const StoreDataLocal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

// 3 - create methode (get)
  getCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var count = pref.get('counterValue');
    return count;
  }

// 4 -  create methode (set)
  setCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(getCounterValue(), _counter);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      setCounterValue();
    });
  }

// 5- creat methode
  @override
  void initState() {
    super.initState();
    checkForCounterValue();
  }

  checkForCounterValue() async {
    int count = await getCounterValue() ?? 0;

    setState(() {
      _counter = count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
