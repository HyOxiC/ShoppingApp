import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/appbar/appBar.dart';
import 'package:flutter_project_trial/common/widgets/product_cart/products_carts_menu.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';

class TestHomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TestHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TestAppBar(
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
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
