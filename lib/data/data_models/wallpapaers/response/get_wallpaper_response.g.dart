// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wallpaper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetWallpapersResponse _$$_GetWallpapersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetWallpapersResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetWallpapersResponseToJson(
        _$_GetWallpapersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Wallpaper _$$_WallpaperFromJson(Map<String, dynamic> json) => _$_Wallpaper(
      id: json['id'] as String?,
      url: json['url'] as String?,
      views: json['views'] as int?,
      favorites: json['favorites'] as int?,
      category: json['category'] as String?,
      resolution: json['resolution'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_WallpaperToJson(_$_Wallpaper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'views': instance.views,
      'favorites': instance.favorites,
      'category': instance.category,
      'resolution': instance.resolution,
      'path': instance.path,
    };
