import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_trial/common/widgets/images_custom/test_circular_icon_image.dart';
import 'package:flutter_project_trial/common/widgets/texts/test_brand_name_verified.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/enums.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestBrandCard extends StatelessWidget {
  const TestBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
    this.isColoredLogo = false,
  });

  final bool showBorder;
  final void Function()? onTap;
  final bool isColoredLogo;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TestRoundedContainer(
        padding: const EdgeInsets.all(TestSizes.s),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TestCircularIconImage(
                image: TestImages.darkAppLogo,
                overlayColor: isColoredLogo
                    ? null
                    : dark
                        ? TestColors.white
                        : TestColors.black,
              ),
            ),
            const SizedBox(
              width: TestSizes.spaceBtwItems / 1.5,
            ),

            // -- Text
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BrandNameVerified(
                  title: 'VeeHav',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '4 Products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium!,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
