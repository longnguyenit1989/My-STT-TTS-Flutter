import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_error_response.g.dart';
part 'search_error_response.freezed.dart';

@freezed
class SearchErrorResponse with _$SearchErrorResponse{
  factory SearchErrorResponse(
      {@JsonKey(name: 'error') String? error}) = _SearchErrorResponse;

  factory SearchErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchErrorResponseFromJson(json);
}

@freezed
class ErrorResponse with _$ErrorResponse{
  factory ErrorResponse(
      {@JsonKey(name: 'code') int? error,
        @JsonKey(name: 'message') String? message,
        @JsonKey(name: 'errors') List<ErrorsResponse>? errors,
        @JsonKey(name: 'status') String? status,
      }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseFromJson(json);
}

@freezed
class ErrorsResponse with _$ErrorsResponse{
  factory ErrorsResponse(
      {@JsonKey(name: 'message') String? message,
        @JsonKey(name: 'domain') String? domain,
        @JsonKey(name: 'reason') String? reason,
      }) = _ErrorsResponse;

  factory ErrorsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsResponseFromJson(json);
}