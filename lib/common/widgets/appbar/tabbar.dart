import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/device/device_utility.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';

class TestTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TestTabBar({super.key, required this.tabs,});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = TestHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TestColors.black : TestColors.white,
      child: TabBar(
        tabs: tabs,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: TestColors.primaryColor,
        labelColor: dark ? TestColors.white : TestColors.black,
        unselectedLabelColor: TestColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TestDeviceUtils.getAppBarHeight());
}
