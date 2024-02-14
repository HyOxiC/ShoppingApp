import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/styles/spacing_styles.dart';
import 'package:flutter_project_trial/features/screens/login/widgets/login_form.dart';
import 'package:flutter_project_trial/features/screens/login/widgets/login_header.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
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
              TestLoginScreenHeader(dark: dark),

              /// Form
              const TestLoginForm(),

              // Divider
              TestFormDivider(dark: dark),
              const SizedBox(
                height: TestSizes.defaultSpace / 2,
              ),

              // footer

              const TestSocialLogins()
            ],
          ),
        ),
      ),
    );
  }
}
