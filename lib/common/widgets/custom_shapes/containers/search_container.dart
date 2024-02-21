import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/device/device_utility.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TestSearchContainer extends StatelessWidget {
  const TestSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackGround = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: TestDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.symmetric(horizontal: TestSizes.m,vertical:  TestSizes.m),
        decoration: BoxDecoration(
          color: showBackGround
              ? dark
                  ? TestColors.dark
                  : TestColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(TestSizes.cardRadiusL),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: dark ? TestColors.white : TestColors.black,
            ),
            const SizedBox(
              width: TestSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
