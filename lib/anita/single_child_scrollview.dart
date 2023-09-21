import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({Key? key}) : super(key: key);

  static const String _title = 'My Single Child Scroll View';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: const Color(0xFF42A5F5), // Yellow
                    height: 200.0,

                    alignment: Alignment.center,
                    child: const Text('single child scroll view'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 200.0,
                    alignment: Alignment.center,
                    child: const Text('Single Child Scroll View'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xFFFFFFFF), // Green
                    height: 200.0,
                    alignment: Alignment.center,
                    child: const Text('Single Child Scroll View'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 200.0,
                    alignment: Alignment.center,
                    child: const Text('Single Child Scroll View'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xFF42A5F5), // Green
                    height: 320.0,
                    alignment: Alignment.center,
                    child: const Text('Single Child Scroll View'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: const Color(0xff008000), // Green
                    height: 300.0,
                    alignment: Alignment.center,
                    child: const Text('Single Child Scroll View'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
