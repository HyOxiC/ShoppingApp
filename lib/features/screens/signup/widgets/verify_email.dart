import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_project_trial/features/screens/login/login.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TestSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(
              image: const AssetImage(TestImages.signUpAuth),
              width: TestHelperFunctions.screenWidth(context) * 0.6,
            ),

            // Title and Subtitle
            Text(
              TestTexts.confirmEmailTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),
            Text(
              'Support : veehavindia@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),
            Text(
              TestTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SuccessScreen(
                    image: TestImages.verifiedEmail,
                    title: TestTexts.yourAccountCreatedTitle,
                    subTitle: TestTexts.yourAccountCreatedSubTitle,
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                  ));
                },
                child: const Text(
                  TestTexts.tContinue,
                ),
              ),
            ),

            const SizedBox(
              height: TestSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  TestTexts.resendEmail,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
