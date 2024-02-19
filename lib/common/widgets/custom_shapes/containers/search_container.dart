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
    this.showBackGround = true ,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return Container(
      width: TestDeviceUtils.getScreenWidth(context),
      padding: const EdgeInsets.all(TestSizes.m),
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
            color: TestColors.black,
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
    );
  }
}