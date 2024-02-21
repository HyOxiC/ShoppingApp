import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestVerticalImageText extends StatelessWidget {
  const TestVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TestColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TestSizes.spaceBtwItems),
        child: Column(
          children: [
            // circular icon
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(TestSizes.s),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark
                        ? TestColors.black
                        : TestColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark
                      ? TestColors.white
                      : TestColors.black,
                ),
              ),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
