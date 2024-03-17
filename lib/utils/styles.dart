import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromRGBO(151, 133, 255, 1);
  static const Color secondary = Color.fromRGBO(3, 3, 3, 1);
  static const Color darkestBlue = Color.fromRGBO(7, 0, 49, 1);
  static const Color darkBlue = Color.fromRGBO(14, 0, 97, 1);
  static const Color strongBlue = Color.fromRGBO(21, 0, 146, 1);
  static const Color blue = Color.fromRGBO(36, 0, 243, 1);
  static const Color darkPurple = Color.fromRGBO(68, 36, 255, 1);
  static const Color strongPurple = Color.fromRGBO(151, 133, 255, 1);
  static const Color defaultPurple = Color.fromRGBO(164, 148, 255, 1);
  static const Color mediumPurple = Color.fromRGBO(177, 163, 255, 1);
  static const Color softPurple = Color.fromRGBO(190, 179, 255, 1);
  static const Color weakPurple = Color.fromRGBO(203, 194, 255, 1);
  static const Color lightPurple = Color.fromRGBO(216, 209, 255, 1);
  static const Color veryLightPurple = Color.fromRGBO(229, 225, 255, 1);
  static const Color lightestPurple = Color.fromRGBO(242, 240, 255, 1);
  static const Color lightWhite = Color.fromRGBO(237, 240, 240, 1);
  static const Color textBody = Color.fromRGBO(112, 110, 122, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color yellow = Color.fromRGBO(237, 255, 133, 1);
  static const Color error = Color.fromRGBO(239, 116, 116, 1);
}

class AppSpacing {
  static const double defaultSpacing = 10;
  static const double defaultMargin = 10;
  static const double defaultPadding = 10;
}

class AppBorderRadius {
  static const double radius16 = 16.0;
}

class AppImages {
  // General Images
  static const String moon = 'assets/images/moon.png';
}

class AppIcons {}

class AppTheme {
  static final base = ThemeData.dark();
  static final theme = ThemeData(
      fontFamily: _defaultFontFamily,
      colorScheme: _colorTheme,
      textTheme: _textTheme);
  static const _defaultFontFamily = 'Anybody';

  static final ColorScheme _colorTheme = base.colorScheme.copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.darkestBlue,
    shadow: AppColors.darkBlue.withOpacity(0.75),
    outline: AppColors.darkBlue.withOpacity(0.30),
    surface: AppColors.darkBlue.withOpacity(0.10),
    error: AppColors.error,
  );

  static final TextTheme _textTheme = base.textTheme.copyWith(
    displaySmall: const TextStyle(
      fontSize: 36.0,
    ),
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      color: AppColors.white,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28.0,
    ),
    titleLarge: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
    titleMedium: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
    titleSmall: const TextStyle(
      fontSize: 14.0,
      color: AppColors.white,
    ),
    bodyLarge: const TextStyle(
      fontSize: 18.0,
      color: AppColors.white,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      color: AppColors.white,
    ),
    bodySmall: const TextStyle(
      fontSize: 12.0,
      color: AppColors.white,
    ),
    labelLarge: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: const TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary,
    ),
    labelSmall: const TextStyle(fontSize: 10.0, color: AppColors.white),
  );
}
