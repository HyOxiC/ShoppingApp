import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/styles/shadow_styles.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/icons/test_icons_circular.dart';
import 'package:flutter_project_trial/common/widgets/images_custom/test_rounded_banner.dart';
import 'package:flutter_project_trial/common/widgets/texts/product_title.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TestProductCardsVertical extends StatelessWidget {
  const TestProductCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    // container with size, padding, color, edgees, radius and shahdow
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TestShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TestSizes.productImageRadius),
            color: dark ? TestColors.black : TestColors.white),
        child: Column(
          children: [
            // thumbnail, wishlist, discount tag
            TestRoundedContainer(
              height: 180,
              width: 160,
              padding: const EdgeInsets.all(TestSizes.xs),
              backgroundColor: dark ? TestColors.dark : TestColors.light,
              child: Stack(
                children: [
                  const TestRoundedBannerImage(
                    height: 180,
                    width: 180,
                    imageUrl: TestImages.productImage2,
                    applyImageRadius: true,
                  ),
      
                  // sale tag
                  Positioned(
                    top: 4,
                    left: 4,
                    child: TestRoundedContainer(
                      radius: TestSizes.s,
                      backgroundColor: TestColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TestSizes.s, vertical: TestSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TestColors.black),
                      ),
                    ),
                  ),
                  // Favourite icon
                  const Positioned(
                    top: 1,
                    right: 2,
                    child: TestCircularIcon(
                      size: 15,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            // Details
            Padding(
              padding: const EdgeInsets.only(left: TestSizes.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TestProductTitleText(
                    title: 'VeeHav car neck rest pillows (small)',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TestSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'VeeHav',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TestSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: TestColors.primaryColor,
                        size: TestSizes.iconSizeXs,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\₹699',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: TestColors.primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TestSizes.cardRadiusM),
                                bottomRight:
                                    Radius.circular(TestSizes.productImageRadius)),
                          ),
                          child: SizedBox(
                              width: TestSizes.iconSizeL,
                              height: TestSizes.iconSizeL,
                              child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: dark? TestColors.black : TestColors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
