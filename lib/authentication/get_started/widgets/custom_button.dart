import 'package:flutter/material.dart';
import 'package:pearl_test/authentication/get_started/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color shadowColor;
  final Function() onPressed;

  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.radius,
      required this.backgroundColor,
      required this.textColor,
      required this.shadowColor,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 5,
              offset: const Offset(0, 2),
            )
          ],
        ),
        alignment: Alignment.center,
        child: CustomText(text: text, color: textColor),
      ),
    );
  }
}
