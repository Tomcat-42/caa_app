import 'package:flutter_tts/flutter_tts.dart';
export 'tts_mobile_and_desktop.dart' show speak;

Future<void> speak(String text) async {
  FlutterTts flutterTts = FlutterTts();
  await flutterTts.setLanguage("pt-BR");
  await flutterTts.setSpeechRate(0.5); // Adjust the rate as desired
  await flutterTts.setVolume(1.0);
  await flutterTts.setPitch(1.0);
  await flutterTts.speak(text);
}
