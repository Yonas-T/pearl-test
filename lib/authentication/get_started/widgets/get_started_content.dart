import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pearl_test/authentication/get_started/widgets/custom_button.dart';
import 'package:pearl_test/authentication/get_started/widgets/custom_sized_box.dart';
import 'package:pearl_test/authentication/get_started/widgets/custom_text.dart';
import 'package:pearl_test/constants/colors.dart';

class GetStartedContent extends StatelessWidget {
  const GetStartedContent({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 0,
      child: Container(
        width: width,
        height: height * 0.6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.withOpacity(0.3),
              Colors.grey.withOpacity(0.1),
              Colors.transparent,
            ],
            stops: const [0.0, 0.4, 1.0],
          ),
          backgroundBlendMode: BlendMode.srcOver,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const CustomSizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: PearlColors.whiteColor,
                ),
                child: const Icon(
                  FontAwesomeIcons.award,
                  color: Colors.green,
                  size: 40,
                ),
              ),
              const CustomSizedBox(height: 8),
              const CustomText(
                text: 'Get Started',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              const CustomSizedBox(height: 8),
              const CustomText(
                text:
                    "Access the Pearl Certification Report provided by your contractor or agent in the Docs feature. Don't have a certification yet? Start by adding your home's features - HVAC, insulation, and more - to your profile. Watch your Pearl Points accumulate and order your certification when you're ready to sell or refinance.",
                color: Colors.white,
                fontSize: 14,
              ),
              const CustomSizedBox(height: 16),
              CustomButton(
                text: 'Get Started',
                backgroundColor: PearlColors.primaryColor,
                textColor: PearlColors.whiteColor,
                shadowColor: PearlColors.blackColor,
                radius: 24,
                height: 45,
                width: width,
                onPressed: () {},
              ),
              const CustomSizedBox(height: 8),
              CustomButton(
                text: 'Sign In',
                backgroundColor: PearlColors.whiteColor,
                textColor: PearlColors.primaryColor,
                shadowColor: PearlColors.blackColor,
                radius: 24,
                height: 45,
                width: width,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
