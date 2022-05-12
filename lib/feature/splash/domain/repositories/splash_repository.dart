import 'package:wallpaper_application_assessment/app/base/api_result.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/request/get_wallpaper_request.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/data/remote_data_source/splash_remote_data_source.dart';

abstract class SplashRepository {
  Future<ApiResult<GetWallpapersResponse>> getWallpapers(
      {required final GetWallpapersRequest getWallpapersRequest,});
}

class SplashRepositoryImp extends SplashRepository {

  SplashRepositoryImp(this._api);
  final SplashRemoteDataSource _api;

  @override
  Future<ApiResult<GetWallpapersResponse>> getWallpapers(
      {required final GetWallpapersRequest getWallpapersRequest,}) async {
    final result =
        await _api.getWallpapers(getWallpapersRequest: getWallpapersRequest);
    return result.when(
      success: (final lang) {
        return ApiResult.success(data: lang);
      },
      failure: (final error) {
        return ApiResult.failure(error: error);
      },
    );
  }
}
