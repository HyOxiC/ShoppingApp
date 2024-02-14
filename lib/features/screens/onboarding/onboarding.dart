import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:flutter_project_trial/features/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_project_trial/features/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_project_trial/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_project_trial/features/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages

          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TestImages.onBoardingImage1,
                title: TestTexts.oBoardingTitle1,
                subTitle: TestTexts.oBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TestImages.onBoardingImage2,
                title: TestTexts.oBoardingTitle2,
                subTitle: TestTexts.oBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TestImages.onBoardingImage3,
                title: TestTexts.oBoardingTitle3,
                subTitle: TestTexts.oBoardingSubTitle3,
              )
            ],
          ),

          // Skip button

          const OnBoardingSkip(),

          // Dot navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          // Circular Button

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
