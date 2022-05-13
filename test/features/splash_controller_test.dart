import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wallpaper_application_assessment/app/base/api_result.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/controller/splash_controller.dart';
import 'package:wallpaper_application_assessment/feature/splash/domain/repositories/splash_repository.dart';

import 'mock_data/main_wallpapers_list.dart';
import 'splash_controller_test.mocks.dart';

@GenerateMocks([SplashRepository])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;

  late SplashRepository repo;
  late SplashController splashController;

  setUp(() {
    repo = MockSplashRepository();
    splashController = SplashController(repo);
  });

  void init() {
    final list =
        GetWallpapersResponse.fromJson(jsonDecode(ServerMocks.listsResponse));
    when(repo.getWallpapers(getWallpapersRequest: ServerMocks.mockRequest))
        .thenAnswer((final _) async => ApiResult.success(data: list));
  }

  group(
    'Splash Controller Test',
    () {
      test(
        'Getx controller splashController.readWallpapers() called',
        () async {
          init();
          await splashController.readWallPapers();
          verify(repo.getWallpapers(
                  getWallpapersRequest: ServerMocks.mockRequest,),)
              .called(1);
        },
      );

      test(
        'Getx controller splashController.generateRequest() called',
        () async {
          final t = splashController.generateRequest();
          expect(t.resolutions, equals('1920x1080'));
        },
      );


    },
  );
}
