import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/base/base_controller.dart';
import 'package:wallpaper_application_assessment/app/routes/app_routes.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/request/get_wallpaper_request.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/data/network/exception/network_exceptions.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/repositories/splash_repository.dart';

class SplashController extends BaseController {
  SplashController(this._repo);
  final SplashRepository _repo;
  List<Wallpaper>? wallpapers;

  @override
  void onInit() {
    readWallPapers();
    super.onInit();
  }

  Future<void> readWallPapers() async {
    final response = await _repo.getWallpapers(
      getWallpapersRequest: generateRequest(),
    );
    response.when(
      success: (final result) async {
        wallpapers = result.data;
        goToHome();
      },
      failure: (final err) {
        FetchDataException(err.toString());
      },
    );
  }

  GetWallpapersRequest generateRequest() {
    return const GetWallpapersRequest(ratios: '16x9', resolutions: '1920x1080');
  }

  void goToHome() => Get.toNamed(
        '${Routes.splash}${Routes.home}',
      );
}
