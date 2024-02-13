import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/device/device_utility.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = TestHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TestDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TestSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TestColors.light : TestColors.dark,
              dotHeight: 6),
        ));
  }
}