import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

class SpeechEx extends StatefulWidget {
  const SpeechEx({super.key});

  @override
  State<SpeechEx> createState() => _SpeechExState();
}

class _SpeechExState extends State<SpeechEx> {

  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String wordsprint = '';
  @override
  void initState() {
    super.initState();
    initSpeech();
  }

  void initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {
    });
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _resultText);
    setState(() {

    });
  }
  void _stopListening() async {
      await _speechToText.stop();
      setState(() {

      });
  }
  void _resultText(result){
    setState(() {
      wordsprint = "${result.recognizedWords}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Speech To Text', style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(_speechToText.isListening ? "Listerning" : _speechEnabled ? "Tap MIC" : "Not listernin" , style: TextStyle(
                fontSize: 28.0
              ),),
            ),
            SizedBox(height: 20),
            Text(wordsprint, style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
          child: Icon(Icons.mic),
          onPressed: _speechToText.isListening ? _stopListening : _startListening),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
