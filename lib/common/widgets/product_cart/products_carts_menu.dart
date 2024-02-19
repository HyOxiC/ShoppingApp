import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TestCartCounterIcon extends StatelessWidget {
  const TestCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TestColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: TestColors.white, fontSizeFactor: 0.8),
            )),
          ),
        )
      ],
    );
  }
}