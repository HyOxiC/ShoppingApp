import 'package:flutter/material.dart';
import 'package:flutter_project_trial/utilities/theme/custom_themes/text_theme.dart';


import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/outlined_button_theme.dart';




class TestAppTheme {

  TestAppTheme._();

  //Light theme

  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TestTextTheme.lightTextTheme,
    chipTheme: TestChipTheme.lightChipThemeData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TestAppBarTheme.lightAppBarTheme,
    checkboxTheme: TestCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TestBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TestElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TestOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TestTextFieldTheme.lightInputDecorationTheme,
    
  );


  // Dark theme

  static ThemeData darkTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TestTextTheme.darkTextTheme,
    chipTheme: TestChipTheme.darkChipThemeData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TestAppBarTheme.darkAppBarTheme,
    checkboxTheme: TestCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TestBottomSheetTheme.darkBottomSheetThemeData,
    elevatedButtonTheme: TestElevatedButtonTheme.darkelEvatedButtonTheme,
    outlinedButtonTheme: TestOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TestTextFieldTheme.darkInputDecorationTheme,
    
  );


}
