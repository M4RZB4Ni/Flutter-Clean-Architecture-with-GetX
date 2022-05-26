import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/feature/home/domain/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      HomePageController.new,
      fenix: true,
    );
  }


}
