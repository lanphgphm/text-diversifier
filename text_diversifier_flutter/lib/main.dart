import 'package:flutter/material.dart';
import 'package:text_diversifier/constants/text_fonts.dart';
import 'package:text_diversifier/constants/colors.dart';
import 'package:text_diversifier/widgets/body_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'text diversifier',
      home: Scaffold(
        appBar: AppBar(
          title: const BoldHeader('a dumb app'),
          backgroundColor: AppColor.primRed,
        ),
        // ignore: avoid_unnecessary_containers
        body: const BodyLayout(),
      ),
    );
  }
}
