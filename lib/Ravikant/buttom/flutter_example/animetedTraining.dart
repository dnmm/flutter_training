import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Training')),
        body: AnimatedView(),
      ),
    );
  }
}

class AnimatedView extends StatefulWidget {
  @override
  _AnimatedViewState createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {
  double _width = 200;
  double _height = 200;

  void changeSize() {
    setState(() {
      _width = 300;
      _height = 300;
    });
  }

  @override
   Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AnimatedContainer(
            color: Colors.blue,
            width: _width,
            height: _height,
            duration: Duration(seconds: 2),
          ),
          ElevatedButton(
            onPressed: changeSize,
            child: Text("Animate"),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class AnimatedScreen extends StatelessWidget {
//   const AnimatedScreen({Key? key}) : super(key: key);
    
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Animated Training')),
//         body: AnimatedView(),
//       ),
//     );
//   }
// }

// class AnimatedView extends StatefulWidget {
//   @override
//   _AnimatedViewState createState() => _AnimatedViewState();
// }

// class _AnimatedViewState extends State<AnimatedView> {
//   double _width = 100.0;
//   double _height = 200.0;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           AnimatedContainer(
//             duration: Duration(seconds: 2),
//             color: Colors.blue,
//             width: _width,
//             height: _height,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _width = 200.0;
//                 _height = 100.0;
//               });
//             },
//             child: Text("Animate"),
//           ),
//         ],
//       ),
//     );
//   }
// }

