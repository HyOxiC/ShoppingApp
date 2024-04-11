import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TestPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Custom AppBar
                  TestAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TestColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: TestSizes.spaceBtwSections,
                  ),
                  //User profile card
                ],
              ),
            )
            // Body
          ],
        ),
      ),
    );
  }
}
