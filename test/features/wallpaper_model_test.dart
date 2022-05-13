import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';

import 'mock_data/main_wallpapers_list.dart';

void main(){

  test('should return a valid List<Wallpaper> when JSON is OK', () async {
    final result = GetWallpapersResponse.fromJson(jsonDecode(ServerMocks.listsResponse));
    expect(result.data, isA<List<Wallpaper>?>());
  });

  test('should return a valid List<Wallpaper> when JSON is NOT OK', () async {
    final result = GetWallpapersResponse.fromJson(jsonDecode(ServerMocks.listsResponse));
    expect(result.data, isNot(Wallpaper));
  });




}
