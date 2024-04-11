import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/password_configuration/forgot_password.dart';
import 'package:flutter_project_trial/features/screens/signup/signup.dart';
import 'package:flutter_project_trial/navigation_menu.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TestLoginForm extends StatelessWidget {
  const TestLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TestSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TestTexts.email,
              ),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwInputFields,
            ),
            //Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TestTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwInputFields,
            ),

            // remember me and forgot pass

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TestTexts.rememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () {
                    Get.to(const ForgotPasswordScreen());
                  },
                  child: const Text(TestTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: TestSizes.spaceBtwSections,
            ),

            // Signin Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: TestColors.primaryColor,
                    side: const BorderSide(color: TestColors.primaryColor)),
                onPressed: () {
                  Get.to(const NavigationBarScreen());
                },
                child: const Text(TestTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),

            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: TestColors.primaryColor)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignupScreen();
                  }));
                  // Get.to((){const SignupScreen();});
                },
                child: const Text(TestTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
