
import 'package:wallpaper_application_assessment/app/base/api_result.dart';
import 'package:wallpaper_application_assessment/app/messages/printers.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/request/get_wallpaper_request.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/data/network/exception/network_exceptions.dart';
import 'package:wallpaper_application_assessment/data/network/networking.dart';
import 'package:wallpaper_application_assessment/data/network/server_path.dart';

abstract class SplashRemoteDataSource {
  Future<ApiResult<GetWallpapersResponse>> getWallpapers({final GetWallpapersRequest getWallpapersRequest});

}
class SplashRemoteDataSourceImp extends SplashRemoteDataSource{

  SplashRemoteDataSourceImp(this._client);
  final NetworkHelper _client;

  @override
  Future<ApiResult<GetWallpapersResponse>> getWallpapers({final GetWallpapersRequest? getWallpapersRequest}) async {
    try {
      final result = await _client.get(url: ServerPath.main);
      return ApiResult.success(data: GetWallpapersResponse.fromJson(result));
    } on Exception catch (e) {
      realDebugPrint('GetWallpapersResponseErrorE $e');

      return ApiResult.failure(
        error: GeneralException(message: e),
      );
    }
  }

}
