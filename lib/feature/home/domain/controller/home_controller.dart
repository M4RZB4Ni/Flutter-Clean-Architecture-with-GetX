import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/base/base_controller.dart';
import 'package:wallpaper_application_assessment/app/routes/app_routes.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/controller/splash_controller.dart';

class HomePageController extends BaseController{
  List<Wallpaper>? wallpapers;

  @override
  void onInit() {
    wallpapers=Get.find<SplashController>().wallpapers;
    super.onInit();
  }

  void goToDetailsPage( final int selectedIndex) => Get.toNamed(
    '${Routes.splash}${Routes.details}',
    arguments: wallpapers![selectedIndex],
  );

}
