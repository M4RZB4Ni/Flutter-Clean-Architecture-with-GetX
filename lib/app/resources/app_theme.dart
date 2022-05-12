import 'package:flutter/material.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/app/resources/app_text_style.dart';

class AppThemes {
  ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primary,
        primaryColorDark: AppColors.primaryDark,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondary,
        ),
        disabledColor: AppColors.disabledButton,

        // splashColor: 500.primary.withOpacity(0.3),
        // highlightColor: 500.primary.withOpacity(0.3),
        scaffoldBackgroundColor: AppColors.background,
        textTheme: TextTheme(
          headline1: AppTextStyles.headline1,
          headline2: AppTextStyles.headline2,
          headline3: AppTextStyles.headline3,
          headline4: AppTextStyles.headline4,
          headline5: AppTextStyles.headline5,
          headline6: AppTextStyles.headline6,
          subtitle1: AppTextStyles.subtitle1, // default TextField
          subtitle2: AppTextStyles.subtitle2,
          bodyText1: AppTextStyles.bodyText1,
          bodyText2: AppTextStyles.bodyText2,
          caption: AppTextStyles.caption,
          button: AppTextStyles.buttonMd,
        ),
        inputDecorationTheme: CustomInputDecorationTheme.inputDecoration,
        // hintColor: 500.text,
        elevatedButtonTheme: CustomInputDecorationTheme.elevatedButtonTheme,
        textButtonTheme: CustomInputDecorationTheme.textButtonThemeData,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
      );

  static ThemeData darkTheme = ThemeData.dark();
}

class CustomInputDecorationTheme {
  CustomInputDecorationTheme._();
  static CustomInputDecorationTheme? _instance;
  // ignore: prefer_constructors_over_static_methods
  static CustomInputDecorationTheme get instance =>
      _instance ??= CustomInputDecorationTheme._();

  static InputDecorationTheme get inputDecoration => InputDecorationTheme(
        prefixIconColor: AppColors.grey900,
        errorStyle: AppTextStyles.caption.copyWith(color: AppColors.error),
        hintStyle: AppTextStyles.bodyText2.copyWith(color: AppColors.grey700),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey700),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey700),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s08),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (final states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.disabledButton;
              } else if (states.contains(MaterialState.pressed)) {
                return AppColors.primaryDark;
              }
              return AppColors.primary;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (final states) => states.contains(MaterialState.disabled)
                ? Colors.white
                : Colors.white,
          ),
          // textStyle: MaterialStateProperty.resolveWith(
          //   (final states) {
          //     return const TextStyle(color: Color(0xFF661F1F));
          //   },
          // ),
        ),
      );

  static TextButtonThemeData get textButtonThemeData => TextButtonThemeData(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          foregroundColor: MaterialStateProperty.resolveWith(
            (final states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.disabledButton;
              } else if (states.contains(MaterialState.pressed)) {
                return AppColors.primaryDark;
              }
              return AppColors.primary;
            },
          ),
        ),
      );
}
