import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final double letterSpacing;

  const TextWidget({
    Key key,
    this.text,
    this.fontFamily,
    this.fontSize,
    this.color,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
