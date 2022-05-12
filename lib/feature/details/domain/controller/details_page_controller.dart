import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:wallpaper_application_assessment/app/base/base_controller.dart';
import 'package:wallpaper_application_assessment/app/messages/printers.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';

class DetailsPageController extends BaseController{

  late Wallpaper wallpaper;

  @override
  void onInit() {
    wallpaper=Get.arguments;
    super.onInit();
  }

  void downloadImage({required final String imagePath}) async
  {
    try {
      // Saved with this method.
      final imageId = await ImageDownloader.downloadImage(imagePath);
      if (imageId == null) {
        return;
      }

      final fileName = await ImageDownloader.findName(imageId);
      final path = await ImageDownloader.findPath(imageId);
      final size = await ImageDownloader.findByteSize(imageId);
      final mimeType = await ImageDownloader.findMimeType(imageId);

    } on PlatformException catch (error) {
      realDebugPrint(error);
    }
  }

}
