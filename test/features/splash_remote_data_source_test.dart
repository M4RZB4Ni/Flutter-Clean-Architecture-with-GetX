
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wallpaper_application_assessment/app/base/api_result.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/data/network/networking.dart';
import 'package:wallpaper_application_assessment/data/network/server_path.dart';
import 'package:wallpaper_application_assessment/data/remote_data_source/splash_remote_data_source.dart';

import 'mock_data/main_wallpapers_list.dart';
import 'splash_remote_data_source_test.mocks.dart';

@GenerateMocks([NetworkHelper])
void main(){

  late SplashRemoteDataSourceImp mockApi;
   final injectClient = MockNetworkHelper();

  setUp(() {
    mockApi = SplashRemoteDataSourceImp(injectClient);
  });

  test('should return wallpapers successful', () async {
    final list = GetWallpapersResponse.fromJson(jsonDecode(ServerMocks.listsResponse));

    when(
      injectClient.get(url: ServerPath.main),
    ).thenAnswer(
          (final _) async => json.decode(http.Response(ServerMocks.listsResponse,200).body),
    );
    final  t =await mockApi.getWallpapers(getWallpapersRequest: ServerMocks.mockRequest);

    expect(t, ApiResult.success(data: list));

  });

}
