import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_application_assessment/data/network/exception/network_exceptions.dart';


part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required final T data}) = Success<T>;

  const factory ApiResult.failure({required final AppException error}) =
  Failure<T>;
}
