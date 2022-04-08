// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BoldHeader extends StatelessWidget {
  final String text;
  const BoldHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 28,
          color: const Color(0xff471212),
        ));
  }
}

class LightHeader extends StatelessWidget {
  final String text;
  const LightHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w400,
          fontSize: 24,
          color: const Color(0xff471212),
        ));
  }
}

class LightBodyLarge extends StatelessWidget {
  final String text;
  const LightBodyLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w300,
          fontSize: 16,
          color: const Color(0xff471212),
        ));
  }
}

class BoldBodyLarge extends StatelessWidget {
  final String text;
  const BoldBodyLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: const Color(0xff471212),
        ));
  }
}

class PlaceHolder extends StatelessWidget {
  final String text;
  const PlaceHolder(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: const Color(0xffc4c4c4),
        ));
  }
}

class InputOutput extends StatelessWidget {
  final String text;
  const InputOutput(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: const Color(0xff000000),
        ));
  }
}
