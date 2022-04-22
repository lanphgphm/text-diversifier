import 'dart:math';

String mockingStringGenerator(String originalText) {
  int n = originalText.length;
  List mockingList = [];
  for (int i = 0; i < n; i++) {
    bool randBool = Random().nextBool();
    if (randBool == true) {
      String uppedChar = originalText[i].toUpperCase();
      mockingList.add(uppedChar);
    } else {
      String lowChar = originalText[i].toLowerCase();
      mockingList.add(lowChar);
    }
  }

  String mockingString = mockingList.join('');
  return mockingString;
}
