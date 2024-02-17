import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/styles/spacing_styles.dart';
import 'package:flutter_project_trial/common/widgets/login_signup/social_logins.dart';
import 'package:flutter_project_trial/features/screens/login/widgets/login_form.dart';
import 'package:flutter_project_trial/features/screens/login/widgets/login_header.dart';
import 'package:flutter_project_trial/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TestSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title& sub-title
              const TestLoginScreenHeader(),

              /// Form
              const TestLoginForm(),

              // Divider
              TestFormDivider(
                dividerText: TestTexts.orSignInWith.capitalize!,
              ),
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
