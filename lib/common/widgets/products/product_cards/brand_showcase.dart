import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/brand_cards.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestBrandShowCase extends StatelessWidget {
  const TestBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return TestRoundedContainer(
      backgroundColor: dark ? TestColors.black : TestColors.white,
      showBorder: true,
      borderColor: TestColors.black,
      margin: const EdgeInsets.only(bottom: TestSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with product count
          const TestBrandCard(
            showBorder: false,
            isColoredLogo: true,
          ),

          // Brand TOP 3 products
          Padding(
            padding: const EdgeInsets.all(TestSizes.s),
            child: Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TestRoundedContainer(
        height: 100,
        backgroundColor: TestHelperFunctions.isDarkMode(context)
            ? TestColors.darkGrey
            : TestColors.light,
        margin: const EdgeInsets.only(right: TestSizes.s),
        padding: const EdgeInsets.all(TestSizes.s),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
