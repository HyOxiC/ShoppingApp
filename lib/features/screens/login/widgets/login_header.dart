import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestLoginScreenHeader extends StatelessWidget {
  const TestLoginScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: dark
                  ? const AssetImage(TestImages.lightAppLogo)
                  : const AssetImage(TestImages.darkAppLogo),
            ),
            Text(
              TestTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TestSizes.xs,
            ),
            Text(
              TestTexts.loginTitle2,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }
}
