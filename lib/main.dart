import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/binding/main_binding.dart';
import 'package:wallpaper_application_assessment/app/resources/app_theme.dart';
import 'package:wallpaper_application_assessment/app/routes/app_pages.dart';
import 'package:wallpaper_application_assessment/app/routes/app_routes.dart';

void main() {

  runApp(const MainApp());
}


class MainApp extends StatelessWidget {

  const MainApp({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {

    return  ScreenUtilInit(
      builder: (final context) => GetMaterialApp(

        title: 'Wallpaper App',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        theme: AppThemes().lightTheme,
        defaultTransition: Transition.fade,
        initialBinding: MainBinding(),
        supportedLocales: const [Locale('en')],
        fallbackLocale: const Locale('en'),
        getPages: AppPages().pages,
      ),
    );

  }
}
