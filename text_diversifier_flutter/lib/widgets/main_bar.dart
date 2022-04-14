// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/text_fonts.dart';
import 'package:text_diversifier/constants/colors.dart';
import 'package:text_diversifier/widgets/text_box.dart';


class MainRightBar extends StatelessWidget {
  const MainRightBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.primYellow,
        child: Container(
          alignment: Alignment.center,
          //padding: EdgeInsets.only(top: 40, bottom: 40),
          child: Column(
            children: [
              Spacer(),
              TextBox(),
              SizedBox(
                  height: 80,
                  width: 700,
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        child: BoldBodyLarge('Copy'),
                        style:
                            ElevatedButton.styleFrom(primary: AppColor.primRed),
                        onPressed: () {},
                      ))),
              TextBox(),
              Spacer()
            ],
          ),
        ));
  }
}