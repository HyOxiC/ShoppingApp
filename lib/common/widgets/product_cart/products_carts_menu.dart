import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TestCartCounterIcon extends StatelessWidget {
  const TestCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = TestColors.white,
    this.dark = false,
  });

  final VoidCallback onPressed;
  final Color iconColor;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Iconsax.shopping_bag,
                color: iconColor,
              )),
        ),
        Positioned(
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color:
                    dark ? TestColors.white : TestColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: dark ? TestColors.black : TestColors.white,
                  fontSizeFactor: 0.8),
            )),
          ),
        )
      ],
    );
  }
}
