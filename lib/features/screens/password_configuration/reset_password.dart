import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TestSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(TestImages.emailDelivered),
                width: TestHelperFunctions.screenWidth(context) * 0.6,
              ),

              // Title and Subtitle
              Text(
                TestTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TestSizes.spaceBtwItems,
              ),
              Text(
                TestTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TestSizes.spaceBtwItems,
              ),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Done',
                    )),
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
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
