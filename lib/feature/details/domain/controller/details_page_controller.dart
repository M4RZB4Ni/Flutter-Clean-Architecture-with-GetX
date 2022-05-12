import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:get/get.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:wallpaper_application_assessment/app/base/base_controller.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';

class DetailsPageController extends BaseController{

  late Wallpaper wallpaper;
  RxBool downloadLoading=true.obs;
  RxBool setBackground=true.obs;
  String? downloadedPath;
  RxInt percentageDownload=0.obs;
  @override
  void onInit() {
    wallpaper=Get.arguments;
    ImageDownloader.callback(onProgressUpdate: (final p0, final p1) {
        percentageDownload.value=p1;
    },);
    super.onInit();
  }

  Future<String?> downloadImage({required final String imagePath}) async
  {
    downloadLoading.value=false;
     final imageId = await ImageDownloader.downloadImage(imagePath);
      if (imageId == null) {
        return null;
      }

      downloadedPath= await ImageDownloader.findPath(imageId);
      Get.snackbar('Image Downloaded', 'Go to the Gallery',snackStyle: SnackStyle.GROUNDED);
     downloadLoading.value=true;
      return downloadedPath;

  }

  Future<void> setBackgroundMobile()async{
    setBackground.value=false;
    if(downloadedPath!=null) {
      final location = WallpaperManager.HOME_SCREEN;
      final result = await WallpaperManager.setWallpaperFromFile(
          downloadedPath!, location,);
      if(result){
        Get.snackbar('Image is Set', 'Check your background',snackStyle: SnackStyle.GROUNDED);
      }
    }else{
      Get.snackbar('Must Download first', 'Please Download image First',snackStyle: SnackStyle.GROUNDED);

    }

    setBackground.value=true;

  }

}
