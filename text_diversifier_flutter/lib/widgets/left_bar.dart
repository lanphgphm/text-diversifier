// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/colors.dart';
import 'package:text_diversifier/constants/text_fonts.dart';
import 'package:text_diversifier/widgets/emoji_box.dart';
import 'package:text_diversifier/helpers/emojis_options.dart';
import 'package:text_diversifier/helpers/insert_options.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.primGreen,
        child: Column(
          children: [
            InsertOptions(),
            SizedBox(height: 15),
            const LightHeader('emoji themes'),
            EmojiOption(),
            SizedBox(height: 25),
            EmojiBox(),
          ],
        ));
  }
}
