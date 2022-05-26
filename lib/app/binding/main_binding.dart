
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/binding/details/details_binding.dart';
import 'package:wallpaper_application_assessment/app/binding/home/home_binding.dart';
import 'package:wallpaper_application_assessment/app/binding/splash/splash_binding.dart';
import 'package:wallpaper_application_assessment/data/local_storage/storege_service.dart';
import 'package:wallpaper_application_assessment/data/network/networking.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
      HomeBinding().dependencies();
     SplashBinding().dependencies();
     DetailsBinding().dependencies();

    Get.lazyPut<LocalStorage>(StorageService.new);
    Get.lazyPut<NetworkHelper>(
      NetworkHelper.new,
      fenix: true,
    );


  }
}
