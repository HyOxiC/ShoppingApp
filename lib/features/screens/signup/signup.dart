import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_project_trial/common/widgets/login_signup/social_logins.dart';
import 'package:flutter_project_trial/features/screens/signup/widgets/signup_form.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark? TestColors.light:TestColors.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TestSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TestTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TestSizes.spaceBtwSections,
              ),

              //Form
              const TestSignUpForm(),
              const SizedBox(
                height: TestSizes.spaceBtwInputFields,
              ),
              // divider
              TestFormDivider(dividerText: TestTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TestSizes.spaceBtwInputFields,
              ),
              const TestSocialLogins(),
            ],
          ),
        ),
      ),
    );
  }
}
