import 'package:flutter/material.dart'; // Importing the Flutter material package for UI components


class W7D4Slider extends StatelessWidget {
  const W7D4Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Example', // Setting the title of the app
      theme: ThemeData(
        primarySwatch: Colors.blue, // Setting the primary color theme
      ),
      home:
          const SliderExample(), // Setting the home screen to SliderExample widget
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  SliderExampleState createState() =>
      SliderExampleState(); // Creating state for the SliderExample widget
}

class SliderExampleState extends State<SliderExample> {
  double _value = 50.0; // Initializing the value of the slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'), // Setting the title of the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Slider Value: ${_value.toStringAsFixed(1)}', // Displaying the current slider value
              style: const TextStyle(
                  fontSize: 20.0), // Setting the font size of the text
            ),
            const SizedBox(
                height: 20.0), // Adding some space between text and slider
            Slider(
              value: _value, // Setting the current value of the slider
              min: 0, // Setting the minimum value of the slider
              max: 100, // Setting the maximum value of the slider
              divisions: 10, // Dividing the slider into 10 equal parts
              label: _value.toStringAsFixed(
                  1), // Displaying the current value above the thumb
              onChanged: (double newValue) {
                // Callback when slider value changes
                setState(() {
                  _value = newValue; // Updating the value of the slider
                });
              },
              activeColor:
                  Colors.blue, // Setting the active color of the slider
              inactiveColor:
                  Colors.grey, // Setting the inactive color of the slider
              onChangeStart: (double startValue) {
                // Callback when slider drag starts
                debugPrint('Started dragging slider with value: $startValue');
              },
              onChangeEnd: (double endValue) {
                // Callback when slider drag ends
                debugPrint('Ended dragging slider with value: $endValue');
              },
              semanticFormatterCallback: (double newValue) {
                // Callback for accessibility
                return '${newValue.round()} dollars'; // Formatting the semantic value
              },
            ),
          ],
        ),
      ),
    );
  }
}
