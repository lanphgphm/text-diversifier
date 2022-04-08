import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/colors.dart';


class EmojiBox extends StatelessWidget {
  const EmojiBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(top: 25, left: 25),
              width: 300,
              height: 225,
              decoration: const BoxDecoration(
                  color: AppColor.primBrightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            );
  }
}