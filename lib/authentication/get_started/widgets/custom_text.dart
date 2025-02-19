import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText(
      {super.key, required this.text, required this.color, this.fontSize, this.fontWeight, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(color: color, fontSize: fontSize ?? 18, fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
