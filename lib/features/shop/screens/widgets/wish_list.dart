import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/icons/test_icons_circular.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_project_trial/common/widgets/products/product_cards/products_grid_layout.dart';
import 'package:flutter_project_trial/navigation_menu.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TestAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TestCircularIcon(
            icon: Iconsax.add,
            onPressed: () {Get.to(const NavigationBarScreen());},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TestSizes.defaultSpace),
          child: Column(
            children: [
              TestGridProductsLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TestProductCardsVertical())
            ],
          ),
        ),
      ),
    );
  }
}
