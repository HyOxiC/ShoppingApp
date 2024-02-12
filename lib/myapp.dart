import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TestAppTheme.lightTheme,
      darkTheme: TestAppTheme.darkTheme,
    );
  }
}