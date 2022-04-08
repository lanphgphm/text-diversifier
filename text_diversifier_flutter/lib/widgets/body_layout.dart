import 'package:flutter/material.dart';
import 'package:text_diversifier/widgets/left_bar.dart';
import 'package:text_diversifier/widgets/main_bar.dart';

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:
              Container(alignment: Alignment.topLeft, child: const LeftBar()),
        ),
        const Expanded(flex: 8, child: MainRightBar())
      ],
    );
  }
}
