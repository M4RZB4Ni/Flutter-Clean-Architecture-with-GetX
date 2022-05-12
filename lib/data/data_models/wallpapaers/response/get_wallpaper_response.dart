import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wallpaper_response.freezed.dart';
part 'get_wallpaper_response.g.dart';

@freezed
class GetWallpapersResponse with _$GetWallpapersResponse {
  const factory GetWallpapersResponse({

    required final List<Wallpaper>? data,

  }) = _GetWallpapersResponse;

  factory GetWallpapersResponse.fromJson(final Map<String, dynamic> json) =>
      _$GetWallpapersResponseFromJson(json);
}

@freezed
class Wallpaper with _$Wallpaper {
  const factory Wallpaper({

    required final String? id,
    required final String? url,
    required final int? views,
    required final int? favorites,
    required final String? category,
    required final String? resolution,
    required final String? path,

  }) = _Wallpaper;

  factory Wallpaper.fromJson(final Map<String, dynamic> json) =>
      _$WallpaperFromJson(json);
}
