import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_trial/common/widgets/appbar/tabbar.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_trial/common/widgets/product_cart/products_carts_menu.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/brand_cards.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/products_grid_layout.dart';
import 'package:flutter_project_trial/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_trial/features/shop/screens/widgets/category_tab.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestShopScreen extends StatelessWidget {
  const TestShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //-- AppBar
        appBar: TestAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineSmall,),
          actions: [
            TestCartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TestColors.white : TestColors.black,
              dark: dark,
            ),
          ],
        ),
        body: NestedScrollView(
          // -- Header
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: TestHelperFunctions.isDarkMode(context)
                    ? TestColors.black
                    : TestColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TestSizes.m),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TestSizes.spaceBtwItems),

                      // Search Bar
                      const TestSearchContainer(
                          text: 'Search in shop', showBorder: true),

                      const SizedBox(height: TestSizes.spaceBtwSections),

                      // -- Featured Brands
                      TestSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: TestSizes.spaceBtwItems / 2),

                      // --Featured Brands card and its products
                      TestGridProductsLayout(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return const TestBrandCard(
                              isColoredLogo: true, showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                // -- Tabs
                bottom: const TestTabBar(
                  tabs: [
                    Tab(child: Text('Car')),
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Men')),
                    Tab(child: Text('Women')),
                    Tab(child: Text('Baby')),
                  ],
                ),
              ),
            ];
          },
          // -- Body
          body: const TabBarView(
            children: [
              TestCategoryTab(),
              TestCategoryTab(),
              TestCategoryTab(),
              TestCategoryTab(),
              TestCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
