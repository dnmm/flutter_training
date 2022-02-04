import 'package:flutter/material.dart';

class MyWebImageInContainer extends StatelessWidget {
  const MyWebImageInContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Image in Container',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Image in Container'),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.vertical,
            spacing: 10,
            children: [
              Container(
                  width: 300.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    fit: BoxFit.cover,
                  )),
              Container(
                  width: 300.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    fit: BoxFit.cover,
                  )),
              Container(
                  width: 300.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    fit: BoxFit.cover,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
