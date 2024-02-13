import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/device/device_utility.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);

    return Positioned(
      top: TestDeviceUtils.getAppBarHeight(),
      right: TestSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: Text(
          'Skip',
          style: TextStyle(color: dark ? TestColors.light : TestColors.dark),
        ),
      ),
    );
  }
}
