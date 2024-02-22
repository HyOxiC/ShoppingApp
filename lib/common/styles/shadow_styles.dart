import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';

class TestShadowStyle {
  //vertical

  static final verticalProductShadow = BoxShadow(
    color: TestColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  // horizontal

  static final horizontalProductShadow = BoxShadow(
    color: TestColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
