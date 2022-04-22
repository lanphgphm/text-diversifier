// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:text_diversifier/widgets/check_box.dart';

class InsertOptions extends StatelessWidget {
  const InsertOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
          child: CheckBox('themed emojis'),
          onTap: () {}),
      CheckBox('annotated emojis'),
      CheckBox('mocking text'),
    ]);
  }
}
