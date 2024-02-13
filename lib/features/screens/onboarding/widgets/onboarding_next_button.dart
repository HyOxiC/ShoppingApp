import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/device/device_utility.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final dark = TestHelperFunctions.isDarkMode(context);

    return Positioned(
      right: TestSizes.defaultSpace,
      bottom: TestDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TestColors.light : TestColors.dark),
        child:  Icon(Iconsax.arrow_right_3, color: dark ? TestColors.dark:TestColors.light,),
      ),
    );
  }
}