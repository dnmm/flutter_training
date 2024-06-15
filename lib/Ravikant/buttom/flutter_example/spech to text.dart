import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;



class Speech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech to Text Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpeechToTextExample(),
    );
  }
}

class SpeechToTextExample extends StatefulWidget {
  @override
  _SpeechToTextExampleState createState() => _SpeechToTextExampleState();
}

class _SpeechToTextExampleState extends State<SpeechToTextExample> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => setState(() {
          _isListening = val == "listening";
        }),
        onError: (val) => setState(() {
          _isListening = false;
        }),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      } else {
        setState(() => _isListening = false);
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech to Text Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _text,
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}%',
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _listen,
        child: Icon(_isListening ? Icons.mic : Icons.mic_none),
      ),
    );
  }
}
