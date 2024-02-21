import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_project_trial/common/widgets/images_custom/test_rounded_banner.dart';
import 'package:flutter_project_trial/features/shop/controllers/home_controller.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:get/get.dart';

class TestPromoSlider extends StatelessWidget {
  const TestPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controller.updatePageIndicator(index);
            },
          ),
          items: banners
              .map((url) => TestRoundedBannerImage(
                  imageUrl: url))
              .toList(),
        ),
        const SizedBox(
          height: TestSizes.s,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TestCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TestColors.primaryColor
                        : TestColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
