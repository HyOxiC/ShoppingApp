import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_trial/common/widgets/product_cart/products_carts_menu.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';

class TestHomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TestHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: TestSizes.m),
      child: TestAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TestTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TestColors.grey),
            ),
            Text(
              TestTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TestColors.white),
            ),
          ],
        ),
        actions: [
           TestCartCounterIcon(
            onPressed: (){},
            iconColor: TestColors.white,
          )
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
