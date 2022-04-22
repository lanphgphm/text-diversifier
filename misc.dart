import 'dart:io';
import 'dart:math';

// import 'text_diversifier/meaning_emoji.csv';

void fairytext_editor() {
  // dictionary containing emoji themes
  Map<String, dynamic> emo_theme = {
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

  // checking if user want to customize emoji list
  print('Set up your own emoji list? (Y/N) ');
  String? emoji_custom_status =
      stdin.readLineSync(); // CURRENTLY NOT ACCEPTING EMOJI INPUT
  if (emoji_custom_status == 'Y') {
    print('Enter emoji set name: ');
    String theme_key = stdin.readLineSync().toString();
    print('Enter your emojis: ');
    String emoji_string = stdin.readLineSync().toString();
    List theme_value = emoji_string.split('');
    emo_theme[theme_key] = theme_value;
  } else {
    print('You may choose from our default sets.');
    print('We have sparkle, hot, cool, plant, love, fruit, chaotic.');
  }

  // picking emoji theme to use
  List chosen_theme = emo_theme['sparkle'];
  print(
      'Choose your emoji theme. Default is sparkle and will be chosen if your input is invalid.');
  String? key = stdin.readLineSync();
  if ((emo_theme.containsKey(key)) == true) {
    print('You have chosen theme $key');
    chosen_theme = emo_theme[key];
  }

  // the actual emoji insertion
  print('Enter your boring text: ');
  String original_text = stdin.readLineSync().toString();
  List original_list = original_text.split(' ');
  List fairy_list = [];

  int n = original_list.length;
  for (int i = 0; i < n; i++) {
    // in every iteration, generate random index for emoji selection
    int max = chosen_theme.length - 1;
    int random_index = Random().nextInt(max - 1);
    fairy_list.add(original_list[i]);
    fairy_list.add(chosen_theme[random_index]);
  }

  String fairy_text = fairy_list.join(' ');
  print(fairy_text); // OUTPUT NOT DISPLAYING EMOJIS
}

void mocking_string_generator() {
  print('Enter your neutral text: ');
  String original_text = stdin.readLineSync().toString();
  int n = original_text.length;
  List mocking_list = [];
  for (int i = 0; i < n; i++) {
    bool randbool = Random().nextBool();
    if (randbool == true) {
      String upped_char = original_text[i].toUpperCase();
      mocking_list.add(upped_char);
    } else {
      String low_char = original_text[i].toLowerCase();
      mocking_list.add(low_char);
    }
  }

  String mocking_string = mocking_list.join('');
  print(mocking_string);
}

// void annotated_emoji_editor() {
//   print('Enter your neutral text: ');
//   String original_text = stdin.readLineSync().toString();
//   int n = original_text.length;
//   List original_list = original_text.split(' ');

//   for (int i = 0; i < n; i++) {
//     // HAVENT BEEN ABLE TO IMPORT CSV FILE
//   }
// }

void main() {
  fairytext_editor();
}


