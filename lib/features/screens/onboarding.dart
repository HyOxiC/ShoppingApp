import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:flutter_project_trial/utilities/constants/text_strings.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: TestImages.onBoardingImage1,
                title: TestTexts.oBoardingTitle1,
                subTitle: TestTexts.oBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TestImages.onBoardingImage2,
                title: TestTexts.oBoardingTitle2,
                subTitle: TestTexts.oBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TestImages.onBoardingImage3,
                title: TestTexts.oBoardingTitle3,
                subTitle: TestTexts.oBoardingSubTitle3,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TestSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: TestHelperFunctions.screenWidth(context) * 0.8,
            height: TestHelperFunctions.screenHeight(context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TestSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
