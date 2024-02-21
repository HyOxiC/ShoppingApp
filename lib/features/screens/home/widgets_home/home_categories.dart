import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/image_text_widgets/vertical_text_image.dart';
import 'package:flutter_project_trial/utilities/constants/image_strings.dart';

class TestHomeCategories extends StatelessWidget {
  const TestHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TestVerticalImageText(
            image: TestImages.car,
            title: 'Car Accessories',
            onTap: () {},
          );
        },
      ),
    );
  }
}