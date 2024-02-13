import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/styles/spacing_styles.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TestSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title& sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: dark
                        ? const AssetImage(TestImages.darkAppLogo)
                        : const AssetImage(TestImages.lightAppLogo),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
