import 'package:flutter/material.dart';
import 'package:pearl_test/constants/colors.dart';

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            PearlColors.primaryColor,
            Colors.transparent,
            PearlColors.primaryColor.withOpacity(0.5),
            PearlColors.primaryColor,
          ],
          stops: const [0.0, 0.5, 0.7, 1.0],
        ),
      ),
    );
  }
}
