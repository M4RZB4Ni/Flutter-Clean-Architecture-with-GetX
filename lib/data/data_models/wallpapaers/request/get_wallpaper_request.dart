import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wallpaper_request.freezed.dart';
part 'get_wallpaper_request.g.dart';

@freezed
class GetWallpapersRequest with _$GetWallpapersRequest {
  const factory GetWallpapersRequest({

    required final String? resolutions,
    required final String? ratios,

  }) = _GetWallpapersRequest;

  factory GetWallpapersRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetWallpapersRequestFromJson(json);
}
