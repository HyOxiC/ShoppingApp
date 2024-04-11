import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/products_grid_layout.dart';
import 'package:flutter_project_trial/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_trial/features/screens/home/widgets_home/home_appbar.dart';
import 'package:flutter_project_trial/features/screens/home/widgets_home/home_categories.dart';
import 'package:flutter_project_trial/features/screens/home/widgets_home/promo_slider.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const TestPrimaryHeaderContainer(
              child: Column(
                children: [
                  // custom appbar
                  TestHomeAppBar(),
                  SizedBox(
                    height: TestSizes.s,
                  ),

                  // Search Bar
                  TestSearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: TestSizes.s,
                  ),

                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: TestSizes.s),
                    child: Column(
                      children: [
                        TestSectionHeading(
                          title: 'Popular categories',
                        ),
                        SizedBox(height: TestSizes.spaceBtwInputFields / 5),

                        // categories
                        TestHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TestSizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TestSizes.defaultSpace / 2),
              child: Column(
                children: [
                  const TestPromoSlider(
                    banners: [
                      TestImages.promoBanner1,
                      TestImages.promoBanner2,
                      TestImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TestSizes.spaceBtwItems,
                  ),
                  // Heading
                  TestSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TestSizes.spaceBtwItems,
                  ),

                  //Popular products
                  TestGridProductsLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TestProductCardsVertical(),
                  ),
                  const SizedBox(
                    height: 50,
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
