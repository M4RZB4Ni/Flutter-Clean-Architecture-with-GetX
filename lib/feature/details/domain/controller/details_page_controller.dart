import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/base/base_controller.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';

class DetailsPageController extends BaseController{

  late Wallpaper wallpaper;

  @override
  void onInit() {
    wallpaper=Get.arguments;
    super.onInit();
  }

}
