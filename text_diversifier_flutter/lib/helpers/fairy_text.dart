import 'dart:io';
import 'dart:math';

String fairytextEditor(String originalText) {
  // dictionary containing emoji themes
  Map<String, dynamic> emoTheme = {
    'sparkle': ['โจ', '๐', '๐', 'โญ', '๐ ', '๐ฅ'],
    'hot': ['๐ฅ', '๐งจ', '๐', '๐ฅต', '๐ถ๏ธ', 'โจ๏ธ'],
    'cool': ['๐ฅถ', '๐ง', '๐ฆ', '๐ฐ', 'โ๏ธ', 'โ'],
    'plants': ['๐ด', '๐ป', '๐', '๐', '๐ณ', '๐', '๐', '๐ฅ', '๐ฅ', '๐ธ'],
    'love': ['๐', '๐', '๐', '๐', '๐ป', '๐', '๐ค', '๐', '๐'],
    'fruit': [
      '๐',
      '๐',
      '๐',
      '๐ฅญ',
      '๐',
      '๐',
      '๐ฅฅ',
      '๐',
      '๐',
      '๐',
      '๐',
      '๐',
      '๐',
      '๐'
    ],
    'chaotic': [
      '๐',
      '๐ค',
      '๐',
      '๐',
      '๐',
      '๐',
      '๐คญ',
      '๐ฎโ๐จ',
      '๐',
      '๐',
      '๐',
      '๐',
      '๐ฅณ',
      '๐',
      '๐',
      '๐',
      '๐ฅณ',
      '๐ ',
      '๐ค',
      '๐ฉ',
      'โจ',
      '๐คก',
      '๐ฅ',
      '๐',
      'โ',
      '๐',
      '๐',
      '๐ค',
      '๐คธ',
      '๐ง',
      '๐ง',
      '๐',
      '๐',
      '๐',
      '๐ป',
      '๐ช',
      '๐ช',
      '๐คฎ'
    ],
    'money': ['๐ฐ', '๐ด', '๐ต', '๐ถ', '๐ท', '๐ธ', '๐ณ', '๐งพ', '๐น'],
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
