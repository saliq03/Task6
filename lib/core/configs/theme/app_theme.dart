import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppTheme{
  static final lightTheme=ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Montserrat',

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ))
    ),

    
  );

}