import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/onboarding/onboarding.dart';
import 'package:flutter_project_trial/utilities/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TestAppTheme.lightTheme,
      darkTheme: TestAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}