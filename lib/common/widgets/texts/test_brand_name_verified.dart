import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/texts/test_brand_name_text.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/enums.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class BrandNameVerified extends StatelessWidget {
  const BrandNameVerified({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TestBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(
          width: TestSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TestColors.primaryColor,
          size: TestSizes.iconSizeXs,
        ),
      ],
    );
  }
}
