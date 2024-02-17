import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class TestSocialLogins extends StatelessWidget {
  const TestSocialLogins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TestColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(TestImages.googleLogo),
              width: TestSizes.iconSizeM,
              height: TestSizes.iconSizeM,
            ),
          ),
        ),
      ],
    );
  }
}
