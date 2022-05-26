import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/feature/details/domain/controller/details_page_controller.dart';

class DetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(
      DetailsPageController.new,
      fenix: true,
    );
  }

}
