import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/icons.dart';
import 'package:text_diversifier/constants/text_fonts.dart';
import 'package:text_diversifier/widgets/custom_spacer.dart';

class CheckBox extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const CheckBox(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: Column(
          children: [
            Row(
              children: [
                uncheckedBox,
                const CustomSpacer(),
                LightBodyLarge(text),
              ],
            ),
          ],
        ));
  }
}
