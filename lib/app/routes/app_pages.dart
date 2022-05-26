
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/routes/app_routes.dart';
import 'package:wallpaper_application_assessment/feature/details/view/details_page.dart';
import 'package:wallpaper_application_assessment/feature/home/view/home_page.dart';
import 'package:wallpaper_application_assessment/feature/splash/view/splash_page.dart';

class AppPages {
   final pages = [
    GetPage(
      name: Routes.splash,
      page: SplashPage.new,
      children: [
        GetPage(
          name: Routes.home,
          page: HomePage.new,
        ),
        GetPage(
          name: Routes.details,
          page: DetailsPage.new,
        ),

      ],
    )
  ];
}
