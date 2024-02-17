import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/password_configuration/reset_password.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TestSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              TestTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwSections,
            ),
            Text(
              TestTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwSections,
            ),

            // Text fields
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TestTexts.email,
              ),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwSections,
            ),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: TestColors.primaryColor,
                    side: const BorderSide(color: TestColors.primaryColor)),
                onPressed: () {Get.off(const ResetPasswordScreen());},
                child: const Text('Submit'),
              ),
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),
          ],
        ),
      ),
    );
  }
}
