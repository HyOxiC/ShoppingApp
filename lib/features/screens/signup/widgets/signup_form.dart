import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/signup/widgets/verify_email.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TestSignUpForm extends StatelessWidget {
  const TestSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TestTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TestSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TestTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TestSizes.spaceBtwInputFields,
          ),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TestTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: TestSizes.spaceBtwInputFields,
          ),
          // Password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              labelText: TestTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TestSizes.spaceBtwInputFields,
          ),
          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TestTexts.email,
                prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: TestSizes.spaceBtwInputFields,
          ),
          //Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TestTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call)),
          ),
          // terms and conditions textbox
          Row(
            children: [
              SizedBox(
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(
                width: TestSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TestTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TestTexts.privacyPolicy} ',
                    style:
                        Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? TestColors.white
                                  : TestColors.primaryColor,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? TestColors.white
                                  : TestColors.primaryColor,
                            )),
                /* TextSpan(
                    text: 'and ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TestTexts.termsAndConditions} ',
                    style:
                        Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? TestColors.white
                                  : TestColors.primaryColor,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? TestColors.white
                                  : TestColors.primaryColor,
                            )), */
              ])),
            ],
          ),
          const SizedBox(
            height: TestSizes.spaceBtwItems / 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmailScreen());
              },
              child: const Text(TestTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
