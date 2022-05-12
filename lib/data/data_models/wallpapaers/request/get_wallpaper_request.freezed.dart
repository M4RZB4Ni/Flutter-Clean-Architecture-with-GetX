// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_wallpaper_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetWallpapersRequest _$GetWallpapersRequestFromJson(Map<String, dynamic> json) {
  return _GetWallpapersRequest.fromJson(json);
}

/// @nodoc
mixin _$GetWallpapersRequest {
  String? get resolutions => throw _privateConstructorUsedError;
  String? get ratios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWallpapersRequestCopyWith<GetWallpapersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWallpapersRequestCopyWith<$Res> {
  factory $GetWallpapersRequestCopyWith(GetWallpapersRequest value,
          $Res Function(GetWallpapersRequest) then) =
      _$GetWallpapersRequestCopyWithImpl<$Res>;
  $Res call({String? resolutions, String? ratios});
}

/// @nodoc
class _$GetWallpapersRequestCopyWithImpl<$Res>
    implements $GetWallpapersRequestCopyWith<$Res> {
  _$GetWallpapersRequestCopyWithImpl(this._value, this._then);

  final GetWallpapersRequest _value;
  // ignore: unused_field
  final $Res Function(GetWallpapersRequest) _then;

  @override
  $Res call({
    Object? resolutions = freezed,
    Object? ratios = freezed,
  }) {
    return _then(_value.copyWith(
      resolutions: resolutions == freezed
          ? _value.resolutions
          : resolutions // ignore: cast_nullable_to_non_nullable
              as String?,
      ratios: ratios == freezed
          ? _value.ratios
          : ratios // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetWallpapersRequestCopyWith<$Res>
    implements $GetWallpapersRequestCopyWith<$Res> {
  factory _$$_GetWallpapersRequestCopyWith(_$_GetWallpapersRequest value,
          $Res Function(_$_GetWallpapersRequest) then) =
      __$$_GetWallpapersRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? resolutions, String? ratios});
}

/// @nodoc
class __$$_GetWallpapersRequestCopyWithImpl<$Res>
    extends _$GetWallpapersRequestCopyWithImpl<$Res>
    implements _$$_GetWallpapersRequestCopyWith<$Res> {
  __$$_GetWallpapersRequestCopyWithImpl(_$_GetWallpapersRequest _value,
      $Res Function(_$_GetWallpapersRequest) _then)
      : super(_value, (v) => _then(v as _$_GetWallpapersRequest));

  @override
  _$_GetWallpapersRequest get _value => super._value as _$_GetWallpapersRequest;

  @override
  $Res call({
    Object? resolutions = freezed,
    Object? ratios = freezed,
  }) {
    return _then(_$_GetWallpapersRequest(
      resolutions: resolutions == freezed
          ? _value.resolutions
          : resolutions // ignore: cast_nullable_to_non_nullable
              as String?,
      ratios: ratios == freezed
          ? _value.ratios
          : ratios // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetWallpapersRequest implements _GetWallpapersRequest {
  const _$_GetWallpapersRequest(
      {required this.resolutions, required this.ratios});

  factory _$_GetWallpapersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetWallpapersRequestFromJson(json);

  @override
  final String? resolutions;
  @override
  final String? ratios;

  @override
  String toString() {
    return 'GetWallpapersRequest(resolutions: $resolutions, ratios: $ratios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWallpapersRequest &&
            const DeepCollectionEquality()
                .equals(other.resolutions, resolutions) &&
            const DeepCollectionEquality().equals(other.ratios, ratios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resolutions),
      const DeepCollectionEquality().hash(ratios));

  @JsonKey(ignore: true)
  @override
  _$$_GetWallpapersRequestCopyWith<_$_GetWallpapersRequest> get copyWith =>
      __$$_GetWallpapersRequestCopyWithImpl<_$_GetWallpapersRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetWallpapersRequestToJson(this);
  }
}

abstract class _GetWallpapersRequest implements GetWallpapersRequest {
  const factory _GetWallpapersRequest(
      {required final String? resolutions,
      required final String? ratios}) = _$_GetWallpapersRequest;

  factory _GetWallpapersRequest.fromJson(Map<String, dynamic> json) =
      _$_GetWallpapersRequest.fromJson;

  @override
  String? get resolutions => throw _privateConstructorUsedError;
  @override
  String? get ratios => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetWallpapersRequestCopyWith<_$_GetWallpapersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
