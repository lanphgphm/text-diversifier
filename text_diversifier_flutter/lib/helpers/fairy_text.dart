import 'dart:io';
import 'dart:math';

String fairytextEditor(String originalText) {
  // dictionary containing emoji themes
  Map<String, dynamic> emoTheme = {
    'sparkle': ['✨', '🎇', '🌟', '⭐', '🌠', '💥'],
    'hot': ['🔥', '🧨', '🎆', '🥵', '🌶️', '♨️'],
    'cool': ['🥶', '🧊', '🍦', '😰', '❄️', '⛄'],
    'plants': ['🌴', '🌻', '🍀', '🍂', '🌳', '🎋', '💚', '🥗', '🥀', '🌸'],
    'love': ['💟', '💓', '💗', '😍', '😻', '💝', '🤟', '💌', '💕'],
    'fruit': [
      '🍎',
      '🍏',
      '🍍',
      '🥭',
      '🍋',
      '🍊',
      '🥥',
      '🍇',
      '🍉',
      '🍈',
      '🍓',
      '🍌',
      '🍒',
      '🍅'
    ],
    'chaotic': [
      '😇',
      '🤗',
      '😌',
      '🙌',
      '😃',
      '😁',
      '🤭',
      '😮‍💨',
      '🙄',
      '😔',
      '🙏',
      '😆',
      '🥳',
      '🏇',
      '👉',
      '👈',
      '🥳',
      '😠',
      '😤',
      '😩',
      '✨',
      '🤡',
      '🔥',
      '🎉',
      '✊',
      '👌',
      '💅',
      '🤙',
      '🤸',
      '🧚',
      '🧘',
      '💃',
      '🌈',
      '🍊',
      '🍻',
      '🔪',
      '🪓',
      '🤮'
    ],
    'money': ['💰', '💴', '💵', '💶', '💷', '💸', '💳', '🧾', '💹'],
  };

  // picking emoji theme to use
  List chosenTheme =
      emoTheme['sparkle']; //chosenTheme = theme chosen by checkbox
  String? key = stdin.readLineSync();
  if ((emoTheme.containsKey(key)) == true) {
    chosenTheme = emoTheme[key];
  }

  // the actual emoji insertion
  List originalList = originalText.split(' ');
  List fairyList = [];
  int n = originalList.length;
  for (int i = 0; i < n; i++) {
    int max = chosenTheme.length - 1;
    int randomIndex = Random().nextInt(max);
    fairyList.add(originalList[i]);
    fairyList.add(chosenTheme[randomIndex]);
  }

  String fairyText = fairyList.join(' ');
  return fairyText;
}
