import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    this.fontFamily,
    this.color,
    this.fontSize = 18,
  });
  final String text;
  final String? fontFamily;
  final double? fontSize;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
      ),
    );
  }
}
