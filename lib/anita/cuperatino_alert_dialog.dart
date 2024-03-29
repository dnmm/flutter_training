import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cuperatinoalertdilog1 extends StatelessWidget {
  const Cuperatinoalertdilog1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cupertinoalertdilogpage(),
    );
  }
}

class Cupertinoalertdilogpage extends StatefulWidget {
  @override
  _CupertinoalertdilogpageState createState() {
    return _CupertinoalertdilogpageState();
  }
}

class _CupertinoalertdilogpageState extends State<Cupertinoalertdilogpage> {
  //double value = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(" Show Cupertino Alert Dialog"),
      ),
      body: Container(
          margin: EdgeInsets.all(40),
          alignment: Alignment.topCenter,
          child: ElevatedButton(
            child: Text("Show Alert Dialog"),
            onPressed: () {
              showDialog();
            },
          )),
    );
  }

  void showDialog() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Delete File"),
          content: Text("Are you sure you want to delete this file?"),
          actions: [
            CupertinoDialogAction(
                child: Text("YES"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            CupertinoDialogAction(
              child: Text("NO"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
