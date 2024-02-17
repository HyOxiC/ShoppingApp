import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/styles/spacing_styles.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TestSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Image(
              image: AssetImage(image),
              width: TestHelperFunctions.screenWidth(context) * 0.6,
            ),

            // Title and Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),

            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(
                    TestTexts.tContinue,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
