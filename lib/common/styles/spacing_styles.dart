import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class TestSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TestSizes.appBarHeight,
    bottom: TestSizes.defaultSpace,
    right: TestSizes.defaultSpace,
    left: TestSizes.defaultSpace,
  );
}