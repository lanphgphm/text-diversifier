import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/colors.dart';


class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, left: 25),
      width: 700,
      height: 220,
      decoration: const BoxDecoration(
          color: AppColor.primBrightGrey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
