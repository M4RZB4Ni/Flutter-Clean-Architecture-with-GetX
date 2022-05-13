

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wallpaper_application_assessment/app/base/api_result.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/data/remote_data_source/splash_remote_data_source.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/repositories/splash_repository.dart';

import 'mock_data/main_wallpapers_list.dart';
import 'splash_repository_test.mocks.dart';


@GenerateMocks([http.Client,SplashRemoteDataSource])
Future<void> main() async {
  late SplashRepositoryImp repo;
  late SplashRemoteDataSource api;

  setUp(() {
    api = MockSplashRemoteDataSource();
    repo = SplashRepositoryImp(api);
  });

  test('should return data', ()async {
    final list = GetWallpapersResponse.fromJson(jsonDecode(ServerMocks.listsResponse));
    when(api.getWallpapers(getWallpapersRequest: ServerMocks.mockRequest))
        .thenAnswer((final _) async => ApiResult.success(data: list));
    final t = await repo.getWallpapers(getWallpapersRequest: ServerMocks.mockRequest);
    expect(t, equals(ApiResult.success(data: list)));
  },);

}
