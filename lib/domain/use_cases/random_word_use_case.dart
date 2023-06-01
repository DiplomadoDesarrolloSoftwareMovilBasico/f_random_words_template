import 'dart:math';

import 'package:english_words/english_words.dart';

class RandomWordUseCase {
  static (String, int) GetRandomWord() {
    final _random = Random();
    var option = _random.nextInt(2);
    var randomItem = "";
    if (option == 0) {
      randomItem = (nouns.toList()..shuffle()).first;
    } else {
      randomItem = (adjectives.toList()..shuffle()).first;
    }
    return (randomItem, option);
  }
}
