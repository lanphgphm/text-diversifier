import 'package:flutter/material.dart';
import 'package:text_diversifier/widgets/check_box.dart';

class InsertOptions extends StatelessWidget {
  const InsertOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      CheckBox('themed emojis'),
      CheckBox('annotated emojis'),
      CheckBox('mocking text'),
    ]);
  }
}
