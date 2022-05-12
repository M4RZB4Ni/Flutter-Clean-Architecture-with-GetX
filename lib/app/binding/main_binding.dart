
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/data/local_storage/storege_service.dart';
import 'package:wallpaper_application_assessment/data/network/networking.dart';
import 'package:wallpaper_application_assessment/data/remote_data_source/splash_remote_data_source.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/controller/splash_controller.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/repositories/splash_repository.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    //HomeBinding().dependencies();
    // SplashBinding().dependencies();

    Get.lazyPut<LocalStorage>(StorageService.new);
    Get.lazyPut<NetworkHelper>(
      NetworkHelper.new,
      fenix: true,
    );
    Get.lazyPut<SplashRemoteDataSource>(
      () => SplashRemoteDataSourceImp(Get.find<NetworkHelper>()),
      fenix: true,
    );

    Get.lazyPut<SplashRepository>(
      () => SplashRepositoryImp(
        Get.find<SplashRemoteDataSource>(),
      ),
      fenix: true,
    );

    Get.lazyPut<SplashController>(
      () => SplashController(Get.find<SplashRepository>()),
      fenix: true,
    );
  }
}
