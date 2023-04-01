import 'dart:html';
export 'tts_web.dart' show speak;

void speak(String text) {
  // is window.speechSynthesis null?
  if (window.speechSynthesis == null) {
    print('window.speechSynthesis is null');
    return;
  }
  // window.speechSynthesis?.cancel(); // Cancel any ongoing speech synthesis
  print('speak: $text');
  final SpeechSynthesisUtterance utterance = SpeechSynthesisUtterance()
    ..text = text;
  print(utterance.text);

  // You can set language, pitch, and rate for the utterance as needed. For example:
  utterance.lang = 'pt-BR';
  utterance.pitch = 1.0;
  utterance.rate = 0.5;
  utterance.volume = 1.0;
  utterance.voice = window.speechSynthesis
      ?.getVoices()
      .firstWhere((voice) => voice.lang == 'pt-BR');

  // play the utterance
  window.speechSynthesis?.speak(utterance);
}
