import 'package:flutter/material.dart';

class TestProductTitleText extends StatelessWidget {
  const TestProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final bool smallSize;
  final int maxLines = 2;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelSmall!.apply(fontSizeFactor: 0.8)
          : Theme.of(context).textTheme.labelLarge ,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
