import 'package:freezed_annotation/freezed_annotation.dart';

part 'queries_response.g.dart';
part 'queries_response.freezed.dart';

@freezed
class QueriesResponse with _$QueriesResponse{
  factory QueriesResponse(
      {@JsonKey(name: 'previousPage') List<QueriesDataResponse>? previousPage,
        @JsonKey(name: 'request') List<QueriesDataResponse>? request,
        @JsonKey(name: 'nextPage') List<QueriesDataResponse>? nextPage}) = _QueriesResponse;

  factory QueriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesResponseFromJson(json);
}

@freezed
class QueriesDataResponse with _$QueriesDataResponse{
  factory QueriesDataResponse(
      {@JsonKey(name: 'title') String? type,
        @JsonKey(name: 'totalResults') String? totalResults,
        @JsonKey(name: 'searchTerms') String? searchTerms,
        @JsonKey(name: 'count') int? count,
        @JsonKey(name: 'startIndex') int? startIndex,
        @JsonKey(name: 'inputEncoding') String? inputEncoding,
        @JsonKey(name: 'outputEncoding') String? outputEncoding,
        @JsonKey(name: 'safe') String? safe,
        @JsonKey(name: 'cx') String? cx}) = _QueriesDataResponse;

  factory QueriesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesDataResponseFromJson(json);
}