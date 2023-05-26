import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_info_response.g.dart';
part 'search_info_response.freezed.dart';

@freezed
class SearchInfoResponse with _$SearchInfoResponse{
  factory SearchInfoResponse(
      {@JsonKey(name: 'searchTime') double? searchTime,
        @JsonKey(name: 'formattedSearchTime') String? formattedSearchTime,
        @JsonKey(name: 'totalResults') String? totalResults,
        @JsonKey(name: 'formattedTotalResults') String? formattedTotalResults}) = _SearchInfoResponse;

  factory SearchInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchInfoResponseFromJson(json);
}