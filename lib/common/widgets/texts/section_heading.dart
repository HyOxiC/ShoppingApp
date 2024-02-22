import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';

class TestSectionHeading extends StatelessWidget {
  const TestSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:2.0),
      child: Row(
        children: [
          Text(
            title,
            style:
                Theme.of(context).textTheme.bodyMedium!.apply(color:TestColors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(onPressed: onPressed, child: Text(buttonTitle,style: Theme.of(context).textTheme.labelSmall!.apply(color: TestColors.grey),)),
        ],
      ),
    );
  }
}
