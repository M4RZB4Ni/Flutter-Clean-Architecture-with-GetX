import 'package:flutter/material.dart';
import 'package:wallpaper_application_assessment/app/base/base_view.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/feature/splash/components/app_load_full_screen.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/controller/splash_controller.dart';

class SplashPage extends BaseView<SplashController>{

  @override
  Widget body(final BuildContext context) {
    return const APPLoadFullScreen();
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.primary;
  }

}
