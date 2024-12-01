import 'package:get/get.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextController extends GetxController {
  FlutterTts flutterTts = FlutterTts();

  // Function to speak the given text
  Future<void> speak(String text) async {
    await flutterTts.setLanguage("en-US"); // Set your preferred language
    await flutterTts.setPitch(5.0); // Set voice pitch
    await flutterTts.setSpeechRate(0.3); // Set speech rate
    await flutterTts.speak(text);
  }

}
