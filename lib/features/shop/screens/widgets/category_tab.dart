import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/brand_showcase.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/products_grid_layout.dart';
import 'package:flutter_project_trial/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class TestCategoryTab extends StatelessWidget {
  const TestCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TestSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const TestBrandShowCase(
                  
                  images: [
                    TestImages.productImage2,
                    TestImages.productImage3,
                    TestImages.productImage4
                  ],
                ),
                const SizedBox(height: TestSizes.spaceBtwItems),

                // Products
                TestSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(height: TestSizes.spaceBtwItems),

                TestGridProductsLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TestProductCardsVertical(),
                ),
                const SizedBox(height: TestSizes.spaceBtwItems),
              ],
            ),
          ),
        ]);
  }
}
