import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/search_container.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            TestPrimaryHeaderContainer(
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

                  // categories
                  Column(
                    children: [
                      TestSectionHeading(
                        title: 'Popular categories',
                      ),
                      SizedBox(height: TestSizes.spaceBtwInputFields / 5),

                      // categories
                      TestHomeCategories()
                    ],
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: TestSizes.defaultSpace, vertical: TestSizes.s),
              child: TestPromoSlider(banners: [TestImages.promoBanner1,TestImages.promoBanner2,TestImages.promoBanner3],),
            ),
          ],
        ),
      ),
    );
  }
}
