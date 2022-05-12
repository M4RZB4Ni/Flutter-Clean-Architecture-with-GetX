// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_wallpaper_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetWallpapersResponse _$GetWallpapersResponseFromJson(
    Map<String, dynamic> json) {
  return _GetWallpapersResponse.fromJson(json);
}

/// @nodoc
mixin _$GetWallpapersResponse {
  List<Wallpaper>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWallpapersResponseCopyWith<GetWallpapersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWallpapersResponseCopyWith<$Res> {
  factory $GetWallpapersResponseCopyWith(GetWallpapersResponse value,
          $Res Function(GetWallpapersResponse) then) =
      _$GetWallpapersResponseCopyWithImpl<$Res>;
  $Res call({List<Wallpaper>? data});
}

/// @nodoc
class _$GetWallpapersResponseCopyWithImpl<$Res>
    implements $GetWallpapersResponseCopyWith<$Res> {
  _$GetWallpapersResponseCopyWithImpl(this._value, this._then);

  final GetWallpapersResponse _value;
  // ignore: unused_field
  final $Res Function(GetWallpapersResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetWallpapersResponseCopyWith<$Res>
    implements $GetWallpapersResponseCopyWith<$Res> {
  factory _$$_GetWallpapersResponseCopyWith(_$_GetWallpapersResponse value,
          $Res Function(_$_GetWallpapersResponse) then) =
      __$$_GetWallpapersResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Wallpaper>? data});
}

/// @nodoc
class __$$_GetWallpapersResponseCopyWithImpl<$Res>
    extends _$GetWallpapersResponseCopyWithImpl<$Res>
    implements _$$_GetWallpapersResponseCopyWith<$Res> {
  __$$_GetWallpapersResponseCopyWithImpl(_$_GetWallpapersResponse _value,
      $Res Function(_$_GetWallpapersResponse) _then)
      : super(_value, (v) => _then(v as _$_GetWallpapersResponse));

  @override
  _$_GetWallpapersResponse get _value =>
      super._value as _$_GetWallpapersResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetWallpapersResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetWallpapersResponse implements _GetWallpapersResponse {
  const _$_GetWallpapersResponse({required final List<Wallpaper>? data})
      : _data = data;

  factory _$_GetWallpapersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetWallpapersResponseFromJson(json);

  final List<Wallpaper>? _data;
  @override
  List<Wallpaper>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetWallpapersResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWallpapersResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_GetWallpapersResponseCopyWith<_$_GetWallpapersResponse> get copyWith =>
      __$$_GetWallpapersResponseCopyWithImpl<_$_GetWallpapersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetWallpapersResponseToJson(this);
  }
}

abstract class _GetWallpapersResponse implements GetWallpapersResponse {
  const factory _GetWallpapersResponse({required final List<Wallpaper>? data}) =
      _$_GetWallpapersResponse;

  factory _GetWallpapersResponse.fromJson(Map<String, dynamic> json) =
      _$_GetWallpapersResponse.fromJson;

  @override
  List<Wallpaper>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetWallpapersResponseCopyWith<_$_GetWallpapersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Wallpaper _$WallpaperFromJson(Map<String, dynamic> json) {
  return _Wallpaper.fromJson(json);
}

/// @nodoc
mixin _$Wallpaper {
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get favorites => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperCopyWith<Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperCopyWith<$Res> {
  factory $WallpaperCopyWith(Wallpaper value, $Res Function(Wallpaper) then) =
      _$WallpaperCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? url,
      int? views,
      int? favorites,
      String? category,
      String? resolution,
      String? path});
}

/// @nodoc
class _$WallpaperCopyWithImpl<$Res> implements $WallpaperCopyWith<$Res> {
  _$WallpaperCopyWithImpl(this._value, this._then);

  final Wallpaper _value;
  // ignore: unused_field
  final $Res Function(Wallpaper) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? views = freezed,
    Object? favorites = freezed,
    Object? category = freezed,
    Object? resolution = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WallpaperCopyWith<$Res> implements $WallpaperCopyWith<$Res> {
  factory _$$_WallpaperCopyWith(
          _$_Wallpaper value, $Res Function(_$_Wallpaper) then) =
      __$$_WallpaperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? url,
      int? views,
      int? favorites,
      String? category,
      String? resolution,
      String? path});
}

/// @nodoc
class __$$_WallpaperCopyWithImpl<$Res> extends _$WallpaperCopyWithImpl<$Res>
    implements _$$_WallpaperCopyWith<$Res> {
  __$$_WallpaperCopyWithImpl(
      _$_Wallpaper _value, $Res Function(_$_Wallpaper) _then)
      : super(_value, (v) => _then(v as _$_Wallpaper));

  @override
  _$_Wallpaper get _value => super._value as _$_Wallpaper;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? views = freezed,
    Object? favorites = freezed,
    Object? category = freezed,
    Object? resolution = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_Wallpaper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wallpaper implements _Wallpaper {
  const _$_Wallpaper(
      {required this.id,
      required this.url,
      required this.views,
      required this.favorites,
      required this.category,
      required this.resolution,
      required this.path});

  factory _$_Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$$_WallpaperFromJson(json);

  @override
  final String? id;
  @override
  final String? url;
  @override
  final int? views;
  @override
  final int? favorites;
  @override
  final String? category;
  @override
  final String? resolution;
  @override
  final String? path;

  @override
  String toString() {
    return 'Wallpaper(id: $id, url: $url, views: $views, favorites: $favorites, category: $category, resolution: $resolution, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallpaper &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.views, views) &&
            const DeepCollectionEquality().equals(other.favorites, favorites) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.resolution, resolution) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(views),
      const DeepCollectionEquality().hash(favorites),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(resolution),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_WallpaperCopyWith<_$_Wallpaper> get copyWith =>
      __$$_WallpaperCopyWithImpl<_$_Wallpaper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WallpaperToJson(this);
  }
}

abstract class _Wallpaper implements Wallpaper {
  const factory _Wallpaper(
      {required final String? id,
      required final String? url,
      required final int? views,
      required final int? favorites,
      required final String? category,
      required final String? resolution,
      required final String? path}) = _$_Wallpaper;

  factory _Wallpaper.fromJson(Map<String, dynamic> json) =
      _$_Wallpaper.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  int? get views => throw _privateConstructorUsedError;
  @override
  int? get favorites => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get resolution => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WallpaperCopyWith<_$_Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}
