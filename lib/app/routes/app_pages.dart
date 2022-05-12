// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/routes/app_routes.dart';
import 'package:wallpaper_application_assessment/feature/details/domain/controller/details_page_controller.dart';
import 'package:wallpaper_application_assessment/feature/details/view/details_page.dart';
import 'package:wallpaper_application_assessment/feature/home/domain/controller/home_controller.dart';
import 'package:wallpaper_application_assessment/feature/home/view/home_page.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/controller/splash_controller.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/repositories/splash_repository.dart';
import 'package:wallpaper_application_assessment/feature/splash/view/splash_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: SplashPage.new,
      binding: BindingsBuilder(() {
        return Get.lazyPut(
              () => SplashController(Get.find<SplashRepository>()),
        );
      }),
      children: [
        GetPage(
          name: Routes.home,
          page: HomePage.new,
          binding: BindingsBuilder(() {
            return Get.lazyPut(
                  HomePageController.new,
            );
          }),
        ),
        GetPage(
          name: Routes.details,
          page: DetailsPage.new,
          binding: BindingsBuilder(() {
            return Get.lazyPut(
                  DetailsPageController.new,
            );
          }),
        ),

      ],
    )
  ];
}
