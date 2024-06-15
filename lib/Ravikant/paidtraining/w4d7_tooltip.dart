import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap with MaterialApp
      title: 'Tooltip Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tooltip Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Tooltip(
                message: 'This is a tooltip example ',
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hover Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
