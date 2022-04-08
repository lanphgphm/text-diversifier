// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/colors.dart';
import 'package:text_diversifier/constants/text_fonts.dart';
import 'package:text_diversifier/widgets/check_box.dart';
import 'package:text_diversifier/widgets/emoji_box.dart';


class LeftBar extends StatelessWidget {
  const LeftBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.primGreen,
        child: Column(
          children: [
            const CheckBox('themed emojis'),
            const CheckBox('annotated emojis'),
            const CheckBox('mocking text'),
            SizedBox(height: 15),
            const LightHeader('emoji themes'),
            Row(
              children: [
                SizedBox(width: 110, child: CheckBox('sparkle')),
                SizedBox(width: 110, child: CheckBox('fairy')),
                CheckBox('love'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 110, child: CheckBox('hot')),
                SizedBox(width: 110, child: CheckBox('cool')),
                CheckBox('chaotic'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 110, child: CheckBox('plant')),
                SizedBox(width: 110, child: CheckBox('fruit')),
                CheckBox('custom'),
              ],
            ),
            SizedBox(height: 25),
            EmojiBox(),
          ],
        ));
  }
}
