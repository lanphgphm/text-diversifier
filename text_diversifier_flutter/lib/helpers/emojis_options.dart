import 'package:flutter/material.dart';
import 'package:text_diversifier/widgets/check_box.dart';

class EmojiOption extends StatelessWidget {
  const EmojiOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(width: 110, child: CheckBox('sparkle')),
            SizedBox(width: 110, child: CheckBox('fairy')),
            CheckBox('love'),
          ],
        ),
        Row(
          children: const [
            SizedBox(width: 110, child: CheckBox('hot')),
            SizedBox(width: 110, child: CheckBox('cool')),
            CheckBox('chaotic'),
          ],
        ),
        Row(
          children: const [
            SizedBox(width: 110, child: CheckBox('plant')),
            SizedBox(width: 110, child: CheckBox('fruit')),
            CheckBox('custom'),
          ],
        ),
      ],
    );
  }
}
