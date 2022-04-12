import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatelessWidget {
  const MyInteractiveViewer({Key? key}) : super(key: key);
  static const String _title = 'Interactive Viewer Screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        constrained: true,
        scaleEnabled: true,
        boundaryMargin: const EdgeInsets.all(20.0),
        minScale: 0.3,
        maxScale: 4,
        child: Image.network(
            'https://thumbs.dreamstime.com/b/amazing-large-size-water-lotus-leaves-amazing-large-size-round-water-green-lotus-leaves-flooding-water-sharp-texture-191731364.jpg'),
      ),
    );
  }
}
