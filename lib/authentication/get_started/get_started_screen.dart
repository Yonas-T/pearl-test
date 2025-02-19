import 'package:flutter/material.dart';
import 'package:pearl_test/authentication/get_started/widgets/custom_text.dart';
import 'package:pearl_test/authentication/get_started/widgets/get_started_content.dart';
import 'package:pearl_test/authentication/get_started/widgets/overlay_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onboarding_background.jpg',
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          const OverlayWidget(),
          const GetStartedContent(),
          const Positioned(
            top: 54,
            left: 2,
            right: 2,
            child: CustomText(
              text: 'Pearl',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}