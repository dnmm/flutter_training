import 'package:flutter/material.dart';

void main() {
  runApp(TooltipExample());
}

class TooltipExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(
              message: 'This is a tooltip',
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Hover Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
