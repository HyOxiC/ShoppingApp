import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_trial/features/screens/home/widgets_home/home_appbar.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // custom appbar
      appBar: TestHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TestPrimaryHeaderContainer(
              child: Column(
                children: [
                  const SizedBox(
                    height: TestSizes.appBarHeight + TestSizes.spaceBtwSections,
                  ),

                  // Search Bar
                  const TestSearchContainer(
                    text: 'Search in store',
                  ),

                  // categories
                  Padding(
                    padding:
                        const EdgeInsets.only(left: TestSizes.defaultSpace),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Popular Categories',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('ButtonTitle'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
